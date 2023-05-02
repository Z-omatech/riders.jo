import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'featuers/splash/views/splash_view.dart';

void main() {
  runApp(const RidersJO());
}

class RidersJO extends StatelessWidget {
  const RidersJO({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
