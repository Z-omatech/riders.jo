import 'package:flutter/material.dart';
import 'package:riders_jo/featuers/splash/views/widgets/splash_body.dart';

import '../../../core/manager/colors_managers.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.kColorPrimaryGreen,
      body: SplashBody(),
    );
  }
}
