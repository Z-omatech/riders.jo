import 'package:flutter/material.dart';
import 'package:riders_jo/screen/details.dart';
import 'package:riders_jo/screen/home.dart';
import 'package:riders_jo/screen/welcome.dart';

void main() {
  runApp(const MyApp());
}

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
      home: Welcome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
