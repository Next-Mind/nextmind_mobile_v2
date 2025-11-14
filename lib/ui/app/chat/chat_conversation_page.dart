import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/domain/models/chat/chat_summary_model.dart';
import 'package:nextmind_mobile_v2/ui/app/chat/chat_screen_view.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';

class ChatConversationPage extends StatelessWidget {
  const ChatConversationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final summary = ModalRoute.of(context)?.settings.arguments
        as ChatSummaryModel?;

    if (summary == null) {
      final l10n = AppLocalizations.of(context)!;
      return Scaffold(
        body: Center(child: Text(l10n.genericErrorLabel)),
      );
    }

    return ChatScreenView(summary: summary);
  }
}
