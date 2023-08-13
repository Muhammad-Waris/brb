import 'package:brb/constants/apppadding.dart';
import 'package:flutter/material.dart';

import '../../constants/appcolors.dart';
import '../../widgets/app_text.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {},
          child: Container(
              padding: const EdgeInsets.only(left: 20),
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset("assets/brb.png")),
        ),
        backgroundColor: AppColors.primaryColor,
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 22,
              width: MediaQuery.of(context).size.width * 0.16,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white.withOpacity(0.3)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    decoration: const BoxDecoration(
                      color: AppColors.yellowColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const AppText(
                    text: "7000",
                    fontSize: 11,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              "assets/notification.png",
              height: 19,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.defaultPadding,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: "Sports",
                    fontSize: 17,
                  ),
                  AppText(
                    text: "View all",
                    fontSize: 12,
                  ),
                ],
              ),
              const SizedBox(
                height: 11,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/sports1.png",
                          width: MediaQuery.of(context).size.width * 0.38,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const AppText(text: "Tenis Bat")
                      ],
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/sports2.png",
                          width: MediaQuery.of(context).size.width * 0.38,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const AppText(text: "Betting")
                      ],
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/sports1.png",
                          width: MediaQuery.of(context).size.width * 0.38,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const AppText(text: "Tenis Bat")
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: "Snooker",
                    fontSize: 17,
                  ),
                  AppText(
                    text: "View all",
                    fontSize: 12,
                  ),
                ],
              ),
              const SizedBox(
                height: 11,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/snooker1.png",
                          width: MediaQuery.of(context).size.width * 0.38,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const AppText(text: "Tenis Bat")
                      ],
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/snooker2.png",
                          width: MediaQuery.of(context).size.width * 0.38,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const AppText(text: "World Sports")
                      ],
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/snooker1.png",
                          width: MediaQuery.of(context).size.width * 0.38,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const AppText(text: "Tenis Bat")
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: "Casino",
                    fontSize: 17,
                  ),
                  AppText(
                    text: "View all",
                    fontSize: 12,
                  ),
                ],
              ),
              const SizedBox(
                height: 11,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/casino.png",
                          width: MediaQuery.of(context).size.width * 0.38,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const AppText(text: "Betting")
                      ],
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/snooker2.png",
                          width: MediaQuery.of(context).size.width * 0.38,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const AppText(text: "Tenis Bat")
                      ],
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/snooker1.png",
                          width: MediaQuery.of(context).size.width * 0.38,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const AppText(text: "World Sports")
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
