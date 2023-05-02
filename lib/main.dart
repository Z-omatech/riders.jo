import 'package:flutter/material.dart';

import 'package:riders_jo/screen/welcome.dart';

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
      home: Welcome(),
      debugShowCheckedModeBanner: false,
      //  home: const SplashView(),
    );
  }
}
