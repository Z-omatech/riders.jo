import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riders_jo/List/list_categories.dart';
import 'package:riders_jo/screen/details2.dart';

import '../custom/bottomNavigationBar.dart';

class Details extends StatefulWidget {
  final List_categories list;

  Details(this.list, {super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController pricecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();

  File? _imageFile;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);
    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: navbar(),
      appBar: AppBar(
        title: Text(widget.list.name),
        backgroundColor: const Color.fromARGB(255, 70, 104, 19),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 5, left: 5),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              const Text("Do you want to sale a ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              Text(widget.list.name + "?",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Enter your prodect'),
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                            width: 200,
                            child: TextField(
                              obscureText: false,
                              controller: namecontroller,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Name prodect',
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            height: 40,
                            width: 200,
                            child: TextField(
                              obscureText: false,
                              controller: pricecontroller,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'pric',
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            height: 40,
                            width: 200,
                            child: TextField(
                              obscureText: false,
                              controller: phonecontroller,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'phone',
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const SizedBox(
                            width: 200, // <-- TextField width
                            height: 120, // <-- TextField height
                            child: TextField(
                              maxLines: null,
                              expands: true,
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                filled: true,
                                labelText: 'details',
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              FloatingActionButton(
                                backgroundColor:
                                    const Color.fromARGB(255, 70, 104, 19),
                                onPressed: () =>
                                    _pickImage(ImageSource.gallery),
                                tooltip: 'Pick Image from Gallery',
                                child: const Icon(Icons.photo_library),
                              ),
                              const SizedBox(width: 16),
                              FloatingActionButton(
                                backgroundColor:
                                    const Color.fromARGB(255, 70, 104, 19),
                                onPressed: () => _pickImage(ImageSource.camera),
                                tooltip: 'Take a Photo',
                                child: const Icon(Icons.camera_alt),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Center(
                            child: _imageFile == null
                                ? const Text('No image selected.')
                                : Image.file(_imageFile!),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 70, 104, 19),
                          ),
                        ),
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
                          child: const Text(
                            'done',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 70, 104, 19)),
                          ))
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
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 95,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 95,
                            width: 95,
                            decoration: BoxDecoration(
                                color: Colors.amberAccent,
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assets/image/welcome.png")),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Container(
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("namecontroller.text",
                                    style: TextStyle(
                                        color: Color(0xff393939),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("pricecontroller.text",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("phonecontroller.text",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePageWidget()));
                            },
                            iconSize: 25,
                            icon: const Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                    )
                  ],
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
