import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../on bordering/view/onbordering_view.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    fAnimation = Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    getNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeTransition(
            opacity: fAnimation!,
            child: const Center(
                child: Text(
              "RIDERS JO",
              style: TextStyle(
                  fontSize: 51,
                  fontFamily: "Poppins",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal),
            )),
          ),
        ]);
  }

  void getNextView() {
    Future.delayed(
        const Duration(seconds: 5), () => Get.to(const OnBorderingView()));
  }
}
