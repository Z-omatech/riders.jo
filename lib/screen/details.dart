import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riders_jo/List/list_categories.dart';

class Details extends StatefulWidget {
  Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController pricecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();

  final picker = ImagePicker();

  File? _imageFile;

  late final PickedFile pickedFile;

  Future<void> _getImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      // Use the picked file for your app logic
    }
  }

  Future<void> _getImageFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      // Use the picked file for your app logic
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        backgroundColor: const Color.fromARGB(255, 70, 104, 19),
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            const Text("Do you want to sale a product?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            TextButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('AlertDialog Title'),
                  content: Column(
                    children: [
                      TextField(
                        obscureText: false,
                        controller: namecontroller,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Name',
                        ),
                      ),
                      TextField(
                        controller: pricecontroller,
                        obscureText: false,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'price',
                        ),
                      ),
                      TextField(
                        obscureText: false,
                        controller: phonecontroller,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Phone',
                            hintText: '07'),
                      ),
                      ElevatedButton(
                        onPressed: _getImageFromGallery,
                        child: const Text('Pick image from gallery'),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          namecontroller.text;
                          phonecontroller.text;
                          pricecontroller.text;
                          Navigator.pop(context, 'done');
                        });
                      },
                      child: const Text('done'),
                    ),
                  ],
                ),
              ),
              child: const Text('Sale',
                  style: const TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  height: 140,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/image/tires.jpg",
                        width: 120,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 60,
                            width: 220,
                            child: Text(namecontroller.text,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(pricecontroller.text,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(phonecontroller.text,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
