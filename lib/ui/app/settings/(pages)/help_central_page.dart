import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/l10n/app_localizations.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/viewmodels/help_central_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_command/result_command.dart';

class HelpCentralPage extends StatefulWidget {
  const HelpCentralPage({super.key});

  @override
  State<HelpCentralPage> createState() => _HelpCentralPageState();
}

class _HelpCentralPageState extends State<HelpCentralPage> {
  final viewModel = injector.get<HelpCentralViewmodel>();

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
        title: Text(AppLocalizations.of(context)!.settingsHelpCentralTitle),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(Dimens.mediumPadding),
        children: [
          Image.asset("assets/images/help_central.png"),
          Text(AppLocalizations.of(context)!.settingsHelpCentralIntro1),
          Text(AppLocalizations.of(context)!.settingsHelpCentralIntro2),
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
