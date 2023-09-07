import 'dart:async';
import 'package:flutter/material.dart';

import 'bottomnav.dart';
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
    Timer(const Duration(seconds: 5), () {
      // Replace '/home' with the route to your next screen
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const BottomNavigation();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff176400),
      body: Center(
        child: Image.asset(
          'assets/Splash_Screen.gif', // Replace 'your_gif.gif' with the actual GIF path
          width: MediaQuery.of(context).size.width/1.5, // Set the desired width of the GIF
          height: MediaQuery.of(context).size.height/1.5, // Set the desired height of the GIF
        ),
      ),
    );
  }
}
