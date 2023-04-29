import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:riders_jo/screen/welcome.dart';
=======
import 'package:get/get_navigation/get_navigation.dart';

import 'featuers/splash/views/splash_view.dart';
>>>>>>> origin/ziad

void main() {
  runApp(const RidersJO());
}

<<<<<<< HEAD
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Welcome(),
      debugShowCheckedModeBanner: false,
=======
class RidersJO extends StatelessWidget {
  const RidersJO({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
>>>>>>> origin/ziad
    );
  }
}
