import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/data/models/chat_summary_model.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/main.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:routefly/routefly.dart';

class ChatSummaryWidget extends StatelessWidget {
  const ChatSummaryWidget({
    super.key,
    required this.summary,
  });

  final ChatSummaryModel summary;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final subtitle = summary.subtitle.isEmpty
        ? AppLocalizations.of(context)!.chatEmptyConversationMessage
        : summary.subtitle;

    return Card(
      color: theme.colorScheme.surfaceContainerHighest,
      margin: EdgeInsets.only(bottom: Dimens.mediumPadding),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 0,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          Routefly.push(routePaths.app.chat.conversation, arguments: summary);
        },
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: theme.colorScheme.surfaceVariant,
            backgroundImage: summary.contact.photoUrl != null &&
                    summary.contact.photoUrl!.isNotEmpty
                ? NetworkImage(summary.contact.photoUrl!)
                : null,
            child: summary.contact.photoUrl == null ||
                    summary.contact.photoUrl!.isEmpty
                ? Icon(
                    Icons.person,
                    color: theme.colorScheme.onSurfaceVariant,
                  )
                : null,
          ),
          title: Text(
            summary.contact.displayName,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.outline,
            ),
          ),
          trailing: summary.unreadCount > 0
              ? CircleAvatar(
                  radius: 12,
                  backgroundColor: theme.colorScheme.primary,
                  child: Text(
                    '${summary.unreadCount}',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
