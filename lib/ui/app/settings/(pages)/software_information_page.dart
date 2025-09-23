import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/ui/app/settings/widgets/settings_info_item_widget.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SoftwareInformationPage extends StatefulWidget {
  const SoftwareInformationPage({super.key});

  @override
  State<SoftwareInformationPage> createState() =>
      _SoftwareInformationPageState();
}

class _SoftwareInformationPageState extends State<SoftwareInformationPage> {
  late Future<PackageInfo> _packageInfo;

  @override
  void initState() {
    _packageInfo = PackageInfo.fromPlatform();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Informações de Software")),
      body: FutureBuilder<PackageInfo>(
        future: _packageInfo,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final info = snapshot.data!;
          return ListView(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
            children: [
              SizedBox(height: 32),
              SettingsInfoItem(title: "Nome do App", subtitle: info.appName),
              SizedBox(height: 15),
              SettingsInfoItem(
                title: "Versão do Sistema",
                subtitle: info.version,
              ),
              SizedBox(height: 15),
              SettingsInfoItem(
                title: "Ultima Atualização",
                subtitle: "23 de Set de 2025",
              ),
              SizedBox(height: 15),
              SettingsInfoItem(
                title: "Codigo da Build",
                subtitle: info.buildNumber,
              ),
              SizedBox(height: 15),
              SettingsInfoItem(
                title: "Nome do Pacote",
                subtitle: info.packageName,
              ),
            ],
          );
        },
      ),
    );
  }
}
