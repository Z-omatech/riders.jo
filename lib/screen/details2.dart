import 'package:flutter/material.dart';

import '../custom/bottomNavigationBar.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Details"),
          backgroundColor: const Color.fromARGB(255, 70, 104, 19),
          centerTitle: true,
        ),
        bottomNavigationBar: navbar(),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Container(
                width: 329.6,
                height: 173,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:
                        Image.asset("assets/image/Motorcycle accessories.jpg")),
              ),
            ),
            const Text(
              'Grapes',
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
              child: Text(
                'Grapes will provide natural nutrients. The  Chemical \nin organic grapes which can be healthier hair and \nskin. It can be improve Your heart health. Protect your\nbody from Cancer.',
              ),
            ),
            Text("name",
                style: TextStyle(
                  color: Color(0xff393939),
                  fontSize: 25,
                )),
            SizedBox(
              height: 5,
            ),
            Text("price",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                )),
            SizedBox(
              height: 5,
            ),
            Text("phone",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                )),
            SizedBox(
              height: 100,
            ),
            Center(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 70, 104, 19)),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Visa Payment",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
