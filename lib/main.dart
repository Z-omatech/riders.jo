import 'package:flutter/material.dart';

import 'package:riders_jo/screen/welcome.dart';

import 'featuers/on bordering/view/widgets/on_bordering_body.dart';
import 'featuers/splash/views/splash_view.dart';

void main() {
  runApp(const RidersJO());
}

class RidersJO extends StatelessWidget {
  const RidersJO({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnBorderingBody(),
      debugShowCheckedModeBanner: false,
      //  home: const SplashView(),
    );
  }
}
