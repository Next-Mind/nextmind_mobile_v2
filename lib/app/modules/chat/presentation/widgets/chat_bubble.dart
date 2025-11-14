import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/data/models/chat_message_model.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/presentation/views/image_preview_screen.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/presentation/widgets/file_bubble.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:open_file/open_file.dart';
import 'package:path/path.dart' as p;
import 'package:url_launcher/url_launcher.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.message,
  });

  final ChatMessageModel message;

  @override
  Widget build(BuildContext context) {
    final isSender = message.isMine;
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        padding: message.isImageAttachment
            ? EdgeInsets.zero
            : const EdgeInsets.all(12),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        decoration: BoxDecoration(
          color: isSender
              ? theme.colorScheme.primaryContainer
              : theme.colorScheme.surfaceVariant,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(16),
            topRight: const Radius.circular(16),
            bottomLeft: Radius.circular(isSender ? 16 : 0),
            bottomRight: Radius.circular(isSender ? 0 : 16),
          ),
        ),
        child: _buildContent(context, theme, l10n, isSender),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    ThemeData theme,
    AppLocalizations l10n,
    bool isSender,
  ) {
    if (message.hasAttachment) {
      if (message.isImageAttachment) {
        return _buildImageAttachment(context, l10n);
      }
      final name = message.attachmentName ??
          (message.attachmentUrl != null
              ? p.basename(message.attachmentUrl!)
              : l10n.chatUnknownFileName);
      return FileBubble(
        fileName: name,
        onOpen: () => _openAttachment(context, l10n),
      );
    }

    return Text(
      message.content ?? '',
      style: theme.textTheme.bodyMedium?.copyWith(
        color: isSender
            ? theme.colorScheme.onPrimaryContainer
            : theme.colorScheme.onSurface,
      ),
    );
  }

  Widget _buildImageAttachment(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    final heroTag = 'msg_${message.id}';
    ImageProvider? provider;

    if (message.localFilePath != null) {
      final file = File(message.localFilePath!);
      if (file.existsSync()) {
        provider = FileImage(file);
      }
    }

    provider ??= (message.attachmentUrl != null &&
            message.attachmentUrl!.isNotEmpty)
        ? NetworkImage(message.attachmentUrl!)
        : null;

    if (provider == null) {
      return Padding(
        padding: const EdgeInsets.all(12),
        child: Text(l10n.chatImageUnavailable),
      );
    }

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => ImagePreviewScreen(
              heroTag: heroTag,
              imageProvider: provider,
            ),
          ),
        );
      },
      child: Hero(
        tag: heroTag,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image(
            image: provider,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Future<void> _openAttachment(
    BuildContext context,
    AppLocalizations l10n,
  ) async {
    if (message.localFilePath != null) {
      await OpenFile.open(message.localFilePath!);
      return;
    }

    final url = message.attachmentUrl;
    if (url == null || url.isEmpty) {
      _showSnackBar(context, l10n.chatAttachmentUnavailable);
      return;
    }

    final uri = Uri.tryParse(url);
    if (uri == null) {
      _showSnackBar(context, l10n.chatAttachmentInvalidUrl);
      return;
    }

    final launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!launched && context.mounted) {
      _showSnackBar(context, l10n.chatAttachmentOpenFailure);
    }
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
