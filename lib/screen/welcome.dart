import 'package:flutter/material.dart';
import 'package:riders_jo/screen/home.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/welcome.png"),
                fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.only(top: 160, right: 10, left: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("WELCOME",
                style: TextStyle(color: Colors.lightGreen, fontSize: 25)),
            const SizedBox(
              height: 10,
            ),
            const Text("Are You Ready \n For An Adventure?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 25,
            ),
            const Text(
                "Unlock your riding potential,take your ride \n anywhere",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                )),
            const SizedBox(
              height: 270,
            ),
            Center(
              child: ElevatedButton(
                style: TextButton.styleFrom(
                    fixedSize: const Size(250, 40),
                    backgroundColor: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.lightGreen,
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 24.0,
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    const Text("Let's Go",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        )),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text("By Omatech",
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 15,
                    )),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
