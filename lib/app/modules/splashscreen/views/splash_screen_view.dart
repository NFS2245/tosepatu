import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:tosepatu/app/modules/auth/login/views/login_view.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return splashScreen();
  }
}

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  fungsion() {
    var duration = Duration(seconds: 3);
    return Timer(duration, () {
      Get.offAll(LoginView());
    });
  }

  @override
  void initState() {
    fungsion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: Image.asset(
              'assets/logo/logo2.jpg',
              scale: 0.1,
            )),
            SizedBox(
              height: 20,
            ),
            Container(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Tosepatu",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
