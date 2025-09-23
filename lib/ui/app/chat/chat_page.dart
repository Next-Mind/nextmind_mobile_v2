import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/app/chat/viewmodels/chat_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final viewModel = injector.get<ChatViewmodel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.chatAppBarTitle,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        toolbarHeight: Dimens.largePadding * 2,
        forceMaterialTransparency: true,
      ),
      body: ListenableBuilder(
        listenable: viewModel.fetchContactsCommand,
        builder: (context, child) {
          return SizedBox(height: 1);
        },
      ),
    );
  }
}
