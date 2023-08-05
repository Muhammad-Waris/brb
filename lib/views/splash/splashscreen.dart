import 'dart:async';

import 'package:brb/constants/appcolors.dart';
import 'package:brb/views/onboarding/onboard.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      // Replace '/home' with the route to your next screen
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return  const OnboardingScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Center(
        child: Image.asset(
          'assets/logo.png', // Replace 'your_logo.png' with the actual image path
          width: 222, // Set the desired width of the logo
          height: 222, // Set the desired height of the logo
        ),
      ),
    );
  }
}
