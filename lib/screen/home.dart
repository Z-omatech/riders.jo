import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        selectedItemColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text("Omatech",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/image/iPhone 12 Pro Max – 1.png"),
              fit: BoxFit.fill,
            )),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Women's Riding Gear",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Get Started Big Deals On \n Parts for Your Ride",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      )),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Top categories",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 120,
            decoration: const BoxDecoration(),
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text(
                        'ali',
                      ),
                      Image.network(
                        'https://picsum.photos/seed/11/600',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text(
                        'rashed',
                      ),
                      Image.network(
                        'https://picsum.photos/seed/866/600',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text(
                        'omet',
                      ),
                      Image.network(
                        'https://picsum.photos/seed/696/600',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text(
                        'omet',
                      ),
                      Image.network(
                        'https://picsum.photos/seed/696/600',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Popular brands",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 120,
            decoration: const BoxDecoration(),
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text(
                        'ali',
                      ),
                      Image.network(
                        'https://picsum.photos/seed/11/600',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text(
                        'rashed',
                      ),
                      Image.network(
                        'https://picsum.photos/seed/866/600',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text(
                        'omet',
                      ),
                      Image.network(
                        'https://picsum.photos/seed/696/600',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text(
                        'omet',
                      ),
                      Image.network(
                        'https://picsum.photos/seed/696/600',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
