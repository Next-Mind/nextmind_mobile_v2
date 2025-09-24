import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/domain/models/contacts/contact.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/main.dart';
import 'package:nextmind_mobile_v2/ui/app/chat/viewmodels/chat_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/chat/widgets/chat_summary_widget.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_command/result_command.dart';
import 'package:routefly/routefly.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final viewModel = injector.get<ChatViewmodel>();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.chatAppBarTitle,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        toolbarHeight: Dimens.extraLargePadding * 3, // sem hardcode
        forceMaterialTransparency: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimens.mediumPadding),
        child: Column(
          children: [
            _ChatSearchBar(
              onAddPressed: () {
                Routefly.push(routePaths.app.chat.contactSearch);
              },
            ),
            SizedBox(height: Dimens.mediumPadding),
            Expanded(
              child: ListenableBuilder(
                listenable: viewModel.fetchContactsCommand,
                builder: (context, child) {
                  final status = viewModel.fetchContactsCommand.value;

                  if (status is RunningCommand) {
                    return const _CenteredProgress();
                  }
                  if (status is FailureCommand) {
                    return _ErrorState(
                      onReload: viewModel.fetchContactsCommand.execute,
                    );
                  }

                  if (viewModel.contacts.isEmpty) {
                    return _EmptyState(
                      title: l10n.chatEmptyTitle,
                      subtitle: l10n.chatEmptySubtitle,
                      onAdd: () {
                        Routefly.push(routePaths.app.chat.contactSearch);
                      },
                      onRefresh: () => viewModel.fetchContactsCommand.execute(),
                    );
                  }

                  return RefreshIndicator(
                    onRefresh: viewModel.fetchContactsCommand.execute,
                    child: _ContactList(
                      contacts: viewModel.contacts,
                      onEdit: (c) => _showEditDialog(context, c, viewModel),
                      onDelete: (c) async {
                        final confirmed = await _confirmDeleteDialog(context);
                        if (confirmed == true) {
                          await viewModel.deleteContact(c.id);
                          await viewModel.fetchContactsCommand.execute();
                        }
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// ------------ Widgets Modulares ------------

class _ChatSearchBar extends StatelessWidget {
  const _ChatSearchBar({required this.onAddPressed});

  final VoidCallback onAddPressed;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Row(
      children: [
        Expanded(
          child: TextFormField(
            validator: (value) {
              if ((value ?? '').isEmpty) {
                return l10n.fieldNotEmpty; // use sua key
              }
              return null;
            },
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: l10n.chatSearchHint, // "Pesquisar..."
            ),
          ),
        ),
        SizedBox(width: Dimens.smallPadding),
        ElevatedButton(
          onPressed: onAddPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: EdgeInsets.all(Dimens.smallPadding),
          ),
          child: Icon(
            Icons.add,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ],
    );
  }
}

class _ContactList extends StatelessWidget {
  const _ContactList({
    required this.contacts,
    required this.onEdit,
    required this.onDelete,
  });

  final List<Contact> contacts;
  final ValueChanged<Contact> onEdit;
  final ValueChanged<Contact> onDelete;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: contacts.length,
      separatorBuilder: (_, __) => SizedBox(height: Dimens.smallPadding),
      padding: EdgeInsets.only(bottom: Dimens.mediumPadding),
      itemBuilder: (context, index) {
        final contact = contacts[index];
        return _DismissibleContactTile(
          contact: contact,
          onEdit: () => onEdit(contact),
          onDelete: () => onDelete(contact),
        );
      },
    );
  }
}

class _DismissibleContactTile extends StatelessWidget {
  const _DismissibleContactTile({
    required this.contact,
    required this.onEdit,
    required this.onDelete,
  });

  final Contact contact;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    final chatSummary = ChatSummary(
      name: contact.nickname,
      photoURL: contact.photoUrl,
      lastMessage: contact.id, // placeholder
    );

    return Dismissible(
      key: Key(contact.id),
      background: _SwipeBackground(
        alignment: Alignment.centerLeft,
        icon: Icons.edit,
        color: Theme.of(context).colorScheme.onTertiaryFixedVariant,
      ),
      secondaryBackground: _SwipeBackground(
        alignment: Alignment.centerRight,
        icon: Icons.delete,
        color: Theme.of(context).colorScheme.error,
      ),
      confirmDismiss: (direction) async {
        if (direction == DismissDirection.startToEnd) {
          onEdit();
          return false;
        }
        if (direction == DismissDirection.endToStart) {
          onDelete();
          return false; // controle é externo com diálogo
        }
        return false;
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Dimens.smallPadding),
        child: ChatSummaryWidget(chatSummary: chatSummary),
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
      child: Icon(icon, color: Theme.of(context).colorScheme.onSurface),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({
    required this.title,
    required this.subtitle,
    required this.onAdd,
    required this.onRefresh,
  });

  final String title;
  final String subtitle;
  final VoidCallback onAdd;
  final RefreshCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RefreshIndicator(
        onRefresh: onRefresh,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.largePadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.chat_bubble_outline,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              SizedBox(height: Dimens.mediumPadding),
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Dimens.smallPadding),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Dimens.mediumPadding),
              ElevatedButton.icon(
                onPressed: onAdd,
                icon: Icon(
                  Icons.person_add,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                label: Text(AppLocalizations.of(context)!.chatEmptyCta),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimens.largePadding,
                    vertical: Dimens.mediumPadding,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CenteredProgress extends StatelessWidget {
  const _CenteredProgress();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _ErrorState extends StatelessWidget {
  const _ErrorState({required this.onReload});

  final Future<void> Function() onReload;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(Dimens.mediumPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppLocalizations.of(context)!.genericErrorLabel),
            SizedBox(height: Dimens.smallPadding),
            ElevatedButton(
              onPressed: onReload,
              child: Text(AppLocalizations.of(context)!.reloadLabel),
            ),
          ],
        ),
      ),
    );
  }
}

/// ------------ Diálogos utilitários ------------

Future<void> _showEditDialog(
  BuildContext context,
  Contact contact,
  ChatViewmodel viewModel,
) async {
  final l10n = AppLocalizations.of(context)!;
  final controller = TextEditingController(text: contact.nickname);

  await showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(l10n.chatEditTitle),
      content: TextFormField(
        controller: controller,
        decoration: InputDecoration(labelText: l10n.chatEditFieldLabel),
      ),
      actions: [
        TextButton(
          onPressed: () => Routefly.pop(ctx),
          child: Text(l10n.cancelLabel),
        ),
        ElevatedButton(
          onPressed: () async {
            await viewModel.updateContact(contact.id, controller.text.trim());
            Routefly.pop(ctx);
            await viewModel.fetchContactsCommand.execute();
          },
          child: Text(l10n.saveLabel),
        ),
      ],
    ),
  );
}

Future<bool?> _confirmDeleteDialog(BuildContext context) {
  final l10n = AppLocalizations.of(context)!;

  return showDialog<bool>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(l10n.confirmLabel),
      content: Text(l10n.chatDeleteConfirm),
      actions: [
        TextButton(
          onPressed: () => Routefly.pop(ctx),
          child: Text(l10n.cancelLabel),
        ),
        TextButton(
          onPressed: () => Routefly.pop(ctx),
          child: Text(l10n.deleteLabel),
        ),
      ],
    ),
  );
}
