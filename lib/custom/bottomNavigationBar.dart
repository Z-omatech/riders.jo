import 'package:flutter/material.dart';
import 'package:riders_jo/screen/accont.dart';
import 'package:riders_jo/screen/event.dart';
import 'package:riders_jo/screen/home.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final List<Widget> screens = [const Home(), const Event(), const Accont()];
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentPageIndex,
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screens[index]),
          );
        });
      },
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.event),
          label: 'events',
        ),
        NavigationDestination(
          icon: Icon(Icons.account_box),
          label: 'Accont',
        )
      ],
    );
  }
}
