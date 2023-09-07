import 'package:brb/constants/appcolors.dart';
import 'package:brb/widgets/app_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'bottomnav.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<OnboardingItem> _onboardingItems = [
    OnboardingItem(
      image: 'assets/onboard1.png',
      title: 'Welcome To BRB Bet',
      description:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia.',
    ),
    OnboardingItem(
      image: 'assets/onboard2.png',
      title: 'Onboarding 2',
      description: 'This is the second onboarding screen.',
    ),
    OnboardingItem(
      image: 'assets/onboard3.png',
      title: 'Onboarding 3',
      description: 'This is the third onboarding screen.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            itemCount: _onboardingItems.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              return OnboardingPage(
                item: _onboardingItems[index],
              );
            },
          ),
          Positioned(
            left: 16.0,
            bottom: 16.0,
            child: TextButton(
              onPressed: () {
                _navigateToHomeScreen();
              },
              child: const AppText(
                text: 'Skip',
                color: Colors.blueGrey,
              ),
            ),
          ),
          Positioned(
            right: 16.0,
            bottom: 16.0,
            child: TextButton(
              onPressed: () {
                if (_currentPage < _onboardingItems.length - 1) {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {
                  _navigateToHomeScreen();
                }
              },
              child: AppText(
                text: _currentPage < _onboardingItems.length - 1
                    ? 'Next'
                    : 'Get Started',
                fontWeight: FontWeight.w700,
                color: AppColors.yellowColor,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 50,
            child: DotsIndicator(
              dotsCount: _onboardingItems.length,
              position: _currentPage.toDouble().toInt(), // Convert to int here
              decorator: DotsDecorator(
                activeColor: AppColors.yellowColor,
                color: Colors.black,
                size: const Size.square(9.0),
                activeSize: const Size(10.0, 9.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToHomeScreen() {
    // Replace this with your navigation logic to the home screen or landing page
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const BottomNavigation()),
    );
  }
}

class OnboardingItem {
  final String image;
  final String title;
  final String description;

  OnboardingItem({
    required this.image,
    required this.title,
    required this.description,
  });
}

class OnboardingPage extends StatelessWidget {
  final OnboardingItem item;

const  OnboardingPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          item.image,
          height: 200.0,
          width: 200.0,
        ),
        const SizedBox(height: 20.0),
        AppText(
          text: item.title,
          fontSize: 22,
          fontWeight: FontWeight.w700,
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.66,
          child: AppText(
            text: item.description,
            textAlign: TextAlign.center,
            color: Colors.blueGrey,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
