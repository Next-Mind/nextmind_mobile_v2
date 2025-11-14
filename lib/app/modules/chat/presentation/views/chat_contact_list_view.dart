import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/data/models/chat_summary_model.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/data/models/user_model.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/presentation/viewmodels/chat_contact_list_viewmodel.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/presentation/widgets/chat_summary_widget.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_dart/result_dart.dart';

class ChatContactListView extends StatefulWidget {
  const ChatContactListView({super.key});

  @override
  State<ChatContactListView> createState() => _ChatContactListViewState();
}

class _ChatContactListViewState extends State<ChatContactListView> {
  late final ChatContactListViewmodel viewModel;
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _candidateSearchController =
      TextEditingController();
  Timer? _candidateDebounce;

  @override
  void initState() {
    super.initState();
    viewModel = injector.get<ChatContactListViewmodel>();
    viewModel.addListener(_onViewModelChanged);
    viewModel.init();
    _searchController.addListener(
      () => viewModel.setSearchQuery(_searchController.text),
    );
  }

  @override
  void dispose() {
    _candidateDebounce?.cancel();
    viewModel.removeListener(_onViewModelChanged);
    _searchController.dispose();
    _candidateSearchController.dispose();
    super.dispose();
  }

  void _onViewModelChanged() {
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.chatAppBarTitle,
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        toolbarHeight: Dimens.extraLargePadding * 3,
        forceMaterialTransparency: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimens.mediumPadding),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: l10n.chatSearchHint,
                    ),
                  ),
                ),
                SizedBox(width: Dimens.smallPadding),
                ElevatedButton(
                  onPressed: () => _openAddContactSheet(context),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: EdgeInsets.all(Dimens.smallPadding),
                  ),
                  child: Icon(
                    Icons.person_add,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
            SizedBox(height: Dimens.mediumPadding),
            Expanded(child: _buildBody(l10n)),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(AppLocalizations l10n) {
    if (viewModel.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (viewModel.errorMessage != null) {
      return _ErrorState(
        message: viewModel.errorMessage!,
        onRetry: viewModel.refresh,
      );
    }

    if (viewModel.filteredContacts.isEmpty) {
      return _EmptyState(
        title: l10n.chatEmptyTitle,
        subtitle: l10n.chatEmptySubtitle,
        ctaLabel: l10n.chatEmptyCta,
        onAdd: () => _openAddContactSheet(context),
        onRefresh: viewModel.refresh,
      );
    }

    return RefreshIndicator(
      onRefresh: viewModel.refresh,
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: viewModel.filteredContacts.length,
        itemBuilder: (context, index) {
          final summary = viewModel.filteredContacts[index];
          return _DismissibleContact(
            summary: summary,
            onEdit: () => _showEditDialog(summary),
            onDelete: () => _confirmDelete(summary),
          );
        },
      ),
    );
  }

  Future<void> _openAddContactSheet(BuildContext context) async {
    await viewModel.loadCandidates();
    if (!mounted) return;

    _candidateSearchController
      ..clear()
      ..removeListener(_handleCandidateSearchChanged);
    _candidateSearchController.addListener(_handleCandidateSearchChanged);

    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (ctx) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(ctx).viewInsets.bottom,
          ),
          child: _CandidateSheet(
            viewModel: viewModel,
            searchController: _candidateSearchController,
            onAddCandidate: (candidate) => _addCandidate(ctx, candidate),
          ),
        );
      },
    );

    _candidateSearchController.removeListener(_handleCandidateSearchChanged);
    _candidateDebounce?.cancel();
  }

  void _handleCandidateSearchChanged() {
    _candidateDebounce?.cancel();
    _candidateDebounce = Timer(const Duration(milliseconds: 350), () {
      viewModel.loadCandidates(query: _candidateSearchController.text);
    });
  }

  Future<void> _addCandidate(
    BuildContext context,
    ChatUserModel candidate,
  ) async {
    final result = await viewModel.addContact(candidate.id);
    final l10n = AppLocalizations.of(context)!;
    result.fold((summary) {
      Navigator.of(context).pop();
      _showSnackBar(context, l10n.chatAddContactSuccess);
    }, (error) {
      _showSnackBar(context, error);
    });
  }

  Future<void> _showEditDialog(ChatSummaryModel summary) async {
    final controller = TextEditingController(text: summary.contact.nickname);

    await showDialog<void>(
      context: context,
      builder: (ctx) {
        final l10n = AppLocalizations.of(ctx)!;
        return AlertDialog(
          title: Text(l10n.chatEditTitle),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(labelText: l10n.chatEditFieldLabel),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: Text(l10n.cancelLabel),
            ),
            ElevatedButton(
              onPressed: () async {
                final trimmed = controller.text.trim();
                final result = await viewModel.renameContact(
                  summary.contact.id,
                  trimmed,
                );
                result.fold((_) {
                  Navigator.of(ctx).pop();
                  _showSnackBar(ctx, l10n.chatEditSuccess);
                }, (error) {
                  _showSnackBar(ctx, error);
                });
              },
              child: Text(l10n.saveLabel),
            ),
          ],
        );
      },
    );
  }

  Future<void> _confirmDelete(ChatSummaryModel summary) async {
    final l10n = AppLocalizations.of(context)!;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.confirmLabel),
        content: Text(l10n.chatDeleteConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(l10n.cancelLabel),
          ),
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(l10n.deleteLabel),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    final result = await viewModel.removeContact(summary.contact.id);
    result.fold((_) {
      _showSnackBar(context, l10n.chatDeleteSuccess);
    }, (error) {
      _showSnackBar(context, error);
    });
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}

class _CandidateSheet extends StatelessWidget {
  const _CandidateSheet({
    required this.viewModel,
    required this.searchController,
    required this.onAddCandidate,
  });

  final ChatContactListViewmodel viewModel;
  final TextEditingController searchController;
  final ValueChanged<ChatUserModel> onAddCandidate;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return SafeArea(
      child: AnimatedBuilder(
        animation: viewModel,
        builder: (context, _) {
          return Padding(
            padding: EdgeInsets.fromLTRB(
              Dimens.mediumPadding,
              Dimens.mediumPadding,
              Dimens.mediumPadding,
              Dimens.mediumPadding + MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  l10n.chatAddContactTitle,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: Dimens.mediumPadding),
                TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: l10n.chatSearchHint,
                  ),
                ),
                SizedBox(height: Dimens.mediumPadding),
                if (viewModel.isCandidatesLoading)
                  const Padding(
                    padding: EdgeInsets.all(24),
                    child: CircularProgressIndicator(),
                  )
                else if (viewModel.candidateError != null)
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Text(
                      viewModel.candidateError!,
                      textAlign: TextAlign.center,
                    ),
                  )
                else if (viewModel.candidates.isEmpty)
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Text(
                      l10n.chatNoCandidatesMessage,
                      textAlign: TextAlign.center,
                    ),
                  )
                else
                  Flexible(
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: viewModel.candidates.length,
                      separatorBuilder: (_, __) =>
                          SizedBox(height: Dimens.smallPadding),
                      itemBuilder: (context, index) {
                        final candidate = viewModel.candidates[index];
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: candidate.photoUrl != null &&
                                    candidate.photoUrl!.isNotEmpty
                                ? NetworkImage(candidate.photoUrl!)
                                : null,
                            child: candidate.photoUrl == null ||
                                    candidate.photoUrl!.isEmpty
                                ? const Icon(Icons.person)
                                : null,
                          ),
                          title: Text(candidate.displayName),
                          subtitle: candidate.email != null
                              ? Text(candidate.email!)
                              : null,
                          trailing: IconButton(
                            icon: const Icon(Icons.person_add),
                            onPressed: () => onAddCandidate(candidate),
                          ),
                        );
                      },
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _DismissibleContact extends StatelessWidget {
  const _DismissibleContact({
    required this.summary,
    required this.onEdit,
    required this.onDelete,
  });

  final ChatSummaryModel summary;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(summary.contact.id),
      background: _SwipeBackground(
        alignment: Alignment.centerLeft,
        color: Theme.of(context).colorScheme.onTertiaryFixedVariant,
        icon: Icons.edit,
      ),
      secondaryBackground: _SwipeBackground(
        alignment: Alignment.centerRight,
        color: Theme.of(context).colorScheme.error,
        icon: Icons.delete,
      ),
      confirmDismiss: (direction) async {
        if (direction == DismissDirection.startToEnd) {
          onEdit();
          return false;
        }
        if (direction == DismissDirection.endToStart) {
          onDelete();
          return false;
        }
        return false;
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Dimens.smallPadding),
        child: ChatSummaryWidget(summary: summary),
      ),
    );
  }
}

class _SwipeBackground extends StatelessWidget {
  const _SwipeBackground({
    required this.icon,
    required this.color,
    required this.alignment,
  });

  final IconData icon;
  final Color color;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      alignment: alignment,
      padding: EdgeInsets.symmetric(horizontal: Dimens.mediumPadding),
      child: Icon(
        icon,
        color: Theme.of(context).colorScheme.onSurface,
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({
    required this.title,
    required this.subtitle,
    required this.ctaLabel,
    required this.onAdd,
    required this.onRefresh,
  });

  final String title;
  final String subtitle;
  final String ctaLabel;
  final VoidCallback onAdd;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: Dimens.largePadding),
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          Icon(
            Icons.chat_bubble_outline,
            size: 64,
            color: Theme.of(context).colorScheme.outline,
          ),
          SizedBox(height: Dimens.mediumPadding),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: Dimens.smallPadding),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                ),
          ),
          SizedBox(height: Dimens.mediumPadding),
          Align(
            child: ElevatedButton.icon(
              onPressed: onAdd,
              icon: const Icon(Icons.person_add),
              label: Text(ctaLabel),
            ),
          ),
        ],
      ),
    );
  }
}

class _ErrorState extends StatelessWidget {
  const _ErrorState({
    required this.message,
    required this.onRetry,
  });

  final String message;
  final Future<void> Function() onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(Dimens.largePadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: Dimens.mediumPadding),
            ElevatedButton(
              onPressed: onRetry,
              child: Text(AppLocalizations.of(context)!.reloadLabel),
            ),
          ],
        ),
      ),
    );
  }
}
