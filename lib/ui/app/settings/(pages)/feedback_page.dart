import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/viewmodels/feedback_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_command/result_command.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final viewModel = injector.get<FeedbackViewmodel>();

  @override
  void initState() {
    super.initState();
    viewModel.sendEmailCommand.addListener(_listenable);
  }

  void _listenable() {
    final value = viewModel.sendEmailCommand.value;
    if (value is FailureCommand<String>) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Erro ao abrir o email')));
    }
  }

  @override
  void dispose() {
    super.dispose();
    viewModel.sendEmailCommand.removeListener(_listenable);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settingsFeedbackTitle),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(Dimens.mediumPadding),
        children: [
          Image.asset("assets/images/feedback.png"),
          Text(AppLocalizations.of(context)!.settingsFeedbackIntro1),
          Text(AppLocalizations.of(context)!.settingsFeedbackIntro2),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Dimens.mediumPadding),
          child: ListenableBuilder(
            listenable: viewModel.sendEmailCommand,
            builder: (context, _) => SizedBox(
              width: double.infinity,
              height: Dimens.extraLargePadding * 2,
              child: ElevatedButton(
                onPressed: viewModel.sendEmailCommand.execute,
                child: viewModel.sendEmailCommand.value is RunningCommand
                    ? SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : Text(
                        AppLocalizations.of(
                          context,
                        )!.settingsHelpCentralConfirm,
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
