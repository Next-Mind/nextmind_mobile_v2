import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpCentralViewmodel {
  late final sendEmailCommand = Command0(_sendEmail);

  final emailLaunch = Uri(
    scheme: 'mailto',
    path: String.fromEnvironment(
      'EMAIL_SUPPORT',
      defaultValue: 'suporte@nextmind.tech',
    ),
    queryParameters: {
      'subject': 'Ajuda com o Aplicativo',
      'body': 'Descreva aqui a sua necessidade...',
    },
  );

  AsyncResult<Unit> _sendEmail() async {
    final bool launched = await launchUrl(
      emailLaunch,
      mode: LaunchMode.externalApplication,
    );
    if (!launched) {
      return Failure(Exception('Não foi possível abrir o email'));
    }
    return Success(unit);
  }
}
