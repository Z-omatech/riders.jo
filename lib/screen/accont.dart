import 'package:flutter/material.dart';
import 'package:riders_jo/custom/bottomNavigationBar.dart';

class Accont extends StatelessWidget {
  const Accont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: navbar(),
      body: Align(
        alignment: const AlignmentDirectional(-0.2, -0.1),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 244.9,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 70, 104, 19)),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              130, 40, 0, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.network(
                              'https://picsum.photos/seed/136/600',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 5),
                      child: Text(
                        'Ali Albadareen',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Text(
                      'alialbadareen123@gmail.com',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                      child: Icon(
                        Icons.shopping_bag_rounded,
                        color: Color.fromARGB(255, 70, 104, 19),
                        size: 24,
                      ),
                    ),
                    const Text(
                      'My Orders',
                      style: TextStyle(color: Color.fromARGB(255, 70, 104, 19)),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 2,
                endIndent: 2,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 20, 25),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                      child: Icon(
                        Icons.favorite,
                        color: Color.fromARGB(255, 70, 104, 19),
                        size: 24,
                      ),
                    ),
                    const Text(
                      'Favourites',
                      style: TextStyle(color: Color.fromARGB(255, 70, 104, 19)),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 2,
                endIndent: 2,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 20, 25),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                      child: Icon(
                        Icons.settings_outlined,
                        color: Color.fromARGB(255, 70, 104, 19),
                        size: 24,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                      child: Text(
                        'Settings',
                        style:
                            TextStyle(color: Color.fromARGB(255, 70, 104, 19)),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 2,
                endIndent: 2,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 20, 25),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                      child: Icon(
                        Icons.shopping_cart_sharp,
                        color: Color.fromARGB(255, 70, 104, 19),
                        size: 24,
                      ),
                    ),
                    const Text(
                      'My Cart',
                      style: TextStyle(color: Color.fromARGB(255, 70, 104, 19)),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 2,
                endIndent: 2,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 20, 25),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                      child: Icon(
                        Icons.rate_review,
                        color: Color.fromARGB(255, 70, 104, 19),
                        size: 24,
                      ),
                    ),
                    const Text(
                      'Rate us',
                      style: TextStyle(color: Color.fromARGB(255, 70, 104, 19)),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 2,
                endIndent: 2,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 20, 25),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                      child: Icon(
                        Icons.share_sharp,
                        color: Color.fromARGB(255, 70, 104, 19),
                        size: 24,
                      ),
                    ),
                    const Text(
                      'Refer a Friend',
                      style: TextStyle(color: Color.fromARGB(255, 70, 104, 19)),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 2,
                endIndent: 2,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 20, 25),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                      child: Icon(
                        Icons.help_rounded,
                        color: Color.fromARGB(255, 70, 104, 19),
                        size: 24,
                      ),
                    ),
                    const Text(
                      'Help ',
                      style: TextStyle(color: Color.fromARGB(255, 70, 104, 19)),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 1,
                indent: 2,
                endIndent: 2,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 20, 25),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                      child: Icon(
                        Icons.login,
                        color: Color.fromARGB(255, 70, 104, 19),
                        size: 24,
                      ),
                    ),
                    const Text(
                      'Log Out',
                      style: TextStyle(color: Color.fromARGB(255, 70, 104, 19)),
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
