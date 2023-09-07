import 'package:brb/constants/apppadding.dart';
import 'package:brb/widgets/app_button.dart';
import 'package:flutter/material.dart';

import '../../constants/appcolors.dart';
import '../../widgets/app_text.dart';

class CurrentGame extends StatelessWidget {
  const CurrentGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {},
          child: Container(
              height: 33,
              width: 33,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: IconButton(onPressed: (){
                Navigator.of(context).pop();
              }, icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.white,),),),
        ),
        centerTitle: true,
        title: const AppText(
          text: "Casino",
          color: Colors.white,
        ),
        backgroundColor: AppColors.primaryColor,
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 22,
              width: MediaQuery.of(context).size.width * 0.24,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xff105A00)),
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
                    child: const Icon(
                      Icons.add,
                      size: 10,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  const AppText(
                    text: "1800",
                    fontSize: 11,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset("assets/coin.png"),
                  )
                ],
              ),
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
              Image.asset("assets/game1.png"),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  AppButton(btnText: "Recharge", width: MediaQuery.of(context).size.width/2.5, ontap: () {}),
                  const SizedBox(
                    width: 10,
                  ),
                  AppButton(btnText: "Play Now", width: MediaQuery.of(context).size.width/2.5, ontap: () {}),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const AppText(
                text: "Casino Game",
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(
                height: 7,
              ),
              const AppText(
                text: "Powered by BRB Bet",
                fontSize: 12,
              ),
              const SizedBox(
                height: 12,
              ),
              const Row(
                children: [
                  AppText(
                    text: "Rating",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  AppText(text: "5.0"),
                  SizedBox(
                    width: 11,
                  ),
                  Icon(
                    Icons.star,
                    color: AppColors.yellowColor,
                  ),
                  Icon(
                    Icons.star,
                    color: AppColors.yellowColor,
                  ),
                  Icon(
                    Icons.star,
                    color: AppColors.yellowColor,
                  ),
                  Icon(
                    Icons.star,
                    color: AppColors.yellowColor,
                  ),
                  Icon(
                    Icons.star,
                    color: AppColors.yellowColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const AppText(
                text: "Details",
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(
                height: 10,
              ),
              const AppText(
                  text:
                      "Mauris condimentum erat nisl. Vivamus quis event maximus elit. Morbi tristique, risus vitae semper a congue, felis nulla varius turpis, eget fringilla eros nunc quis turpis. Praesent sed elit and see more… ")
            ],
          ),
        ),
      ),
    );
  }
}
