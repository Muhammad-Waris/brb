import 'package:brb/constants/apppadding.dart';
import 'package:flutter/material.dart';

import '../../constants/appcolors.dart';
import '../../widgets/app_text.dart';

class OddsScreen extends StatelessWidget {
  const OddsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              height: 33,
              width: 33,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
        ),
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: const AppText(
          text: "Odds",
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset("assets/notification.png"),
          )
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
              Image.asset("assets/odds.png"),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset("assets/fire.png"),
                  const SizedBox(
                    width: 11,
                  ),
                  const AppText(
                    text: "Odds",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              const WidgetOdds(),
              const SizedBox(
                height: 22,
              ),
              const WidgetOdds(),
              const SizedBox(
                height: 22,
              ),
              const WidgetOdds(),
            ],
          ),
        ),
      ),
    );
  }
}

class WidgetOdds extends StatelessWidget {
  const WidgetOdds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/un.png",
                        height: 30,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      const AppText(
                        text: "New Zealand",
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  const AppText(
                    text: "VS",
                    fontWeight: FontWeight.w700,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/un.png",
                        height: 30,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      const AppText(
                        text: "Africa",
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stackwidget(),
                  Stackwidget(),
                  Stackwidget(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Stackwidget extends StatelessWidget {
  const Stackwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: 66,
          width: MediaQuery.of(context).size.width * 0.23,
          decoration: BoxDecoration(border: Border.all()),
          child: const Center(
            child: AppText(
              text: "1.4",
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 52),
          child: Container(
            height: 28,
            width: 28,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.yellowColor),
            child: const Center(
              child: AppText(text: "1"),
            ),
          ),
        )
      ],
    );
  }
}
