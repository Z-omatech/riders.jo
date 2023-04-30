import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:riders_jo/screen/details.dart';

import '../List/list_categories.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> imageList = [
    'assets/image/b1.png',
    'assets/image/b1.png',
    'assets/image/b1.png',
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  int selectedIndex = 0;
  //New
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        selectedIconTheme: IconThemeData(color: Colors.black, size: 40),
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        currentIndex: selectedIndex, //New
        onTap: _onItemTapped, //New

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'notifications',
          ),
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(right: 10, left: 10, top: 25, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      Text("Riding Gear",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Get Started Big Deals On \n Parts for Your Ride",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
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
                height: 200,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                  ),
                  items: imageList.map((imageUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Image.asset(
                          imageUrl,
                          fit: BoxFit.cover,
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 15,
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
                height: 200,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: list_categories.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Details()),
                                );
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  width: 140,
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          list_categories.elementAt(index).name,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                      Image.asset(
                                        list_categories.elementAt(index).image,
                                        width: 140,
                                        height: 180,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              ));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
