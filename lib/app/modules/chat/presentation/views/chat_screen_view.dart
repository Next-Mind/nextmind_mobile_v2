import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/data/models/chat_summary_model.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/presentation/viewmodels/chat_viewmodel.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/presentation/widgets/chat_bubble.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/presentation/widgets/chat_input_field.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:routefly/routefly.dart';

class ChatScreenView extends StatefulWidget {
  const ChatScreenView({
    super.key,
    required this.summary,
  });

  final ChatSummaryModel summary;

  @override
  State<ChatScreenView> createState() => _ChatScreenViewState();
}

class _ChatScreenViewState extends State<ChatScreenView> {
  late final ChatViewmodel viewModel;
  final ScrollController _scrollController = ScrollController();
  int _lastMessageCount = 0;

  @override
  void initState() {
    super.initState();
    viewModel = injector.get<ChatViewmodel>();
    viewModel.addListener(_onViewModelChanged);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      viewModel.loadConversation(widget.summary.contact.id);
    });
  }

  @override
  void dispose() {
    viewModel.removeListener(_onViewModelChanged);
    viewModel.reset();
    _scrollController.dispose();
    super.dispose();
  }

  void _onViewModelChanged() {
    if (!mounted) return;
    final messageCount = viewModel.messages.length;
    final shouldScroll = messageCount > _lastMessageCount;
    _lastMessageCount = messageCount;
    setState(() {});
    if (shouldScroll) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!_scrollController.hasClients) return;
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final summary = widget.summary;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        titleSpacing: 0,
        backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
        title: Row(
          children: [
            IconButton(
              onPressed: () => Routefly.pop(context),
              icon: const Icon(Icons.arrow_back),
            ),
            CircleAvatar(
              radius: 20,
              backgroundImage: summary.contact.photoUrl != null &&
                      summary.contact.photoUrl!.isNotEmpty
                  ? NetworkImage(summary.contact.photoUrl!)
                  : null,
              child: summary.contact.photoUrl == null ||
                      summary.contact.photoUrl!.isEmpty
                  ? const Icon(Icons.person)
                  : null,
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  summary.contact.displayName,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  l10n.chatOnlineStatus,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: _buildMessagesArea(l10n),
          ),
          ChatInputField(viewModel: viewModel),
        ],
      ),
    );
  }

  Widget _buildMessagesArea(AppLocalizations l10n) {
    if (viewModel.isLoading && viewModel.messages.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (viewModel.errorMessage != null && viewModel.messages.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            viewModel.errorMessage!,
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    if (viewModel.messages.isEmpty) {
      return Center(
        child: Text(
          l10n.chatEmptyConversationMessage,
          textAlign: TextAlign.center,
        ),
      );
    }

    return ListView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.symmetric(vertical: 12),
      itemCount: viewModel.messages.length,
      itemBuilder: (context, index) {
        final message = viewModel.messages[index];
        return ChatBubble(message: message);
      },
    );
  }
}
