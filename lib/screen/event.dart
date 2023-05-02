import 'package:flutter/material.dart';

import '../custom/bottomNavigationBar.dart';

class Event extends StatelessWidget {
  const Event({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: navbar(),
    );
  }
}
