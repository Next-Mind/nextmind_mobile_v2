import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/main.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:routefly/routefly.dart';

class ChatSummaryWidget extends StatelessWidget {
  final ChatSummary chatSummary;

  const ChatSummaryWidget({super.key, required this.chatSummary});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      margin: EdgeInsets.only(bottom: Dimens.mediumPadding),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 0,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          Routefly.push(routePaths.app.chat.path);
        },
        child: ListTile(
          title: Text(chatSummary.name),
          subtitle: Text(chatSummary.lastMessage),
          leading: Image.network(
            chatSummary.photoURL,
            errorBuilder: (context, error, stackTrace) {
              return Image.asset('assets/images/placeholder_user.png');
            },
          ),
        ),
      ),
    );
  }
}

class ChatSummary {
  String name;
  String photoURL;
  String lastMessage;
  ChatSummary({
    required this.name,
    required this.photoURL,
    required this.lastMessage,
  });
}
