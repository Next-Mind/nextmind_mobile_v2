import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/ui/app/home/viewmodels/home_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/home/widgets/home_appbar_widget.dart';
import 'package:nextmind_mobile_v2/ui/app/home/widgets/wave_background_widget.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_command/result_command.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final viewModel = injector.get<HomeViewmodel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListenableBuilder(
        listenable: viewModel.initCommand,
        builder: (context, child) {
          return viewModel.initCommand.value is RunningCommand
              ? CircularProgressIndicator()
              : home(context);
        },
      ),
    );
  }
}

Widget home(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(
          height: 380,
          child: Stack(
            fit: StackFit.expand,
            children: [
              WaveBackgroundStacked(),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: Dimens.mediumPadding,
                ),
                child: Column(
                  children: [
                    SizedBox(height: Dimens.smallPadding * 3),
                    HomeAppBar(
                      onMenuTap: () => Scaffold.of(context).openDrawer(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
