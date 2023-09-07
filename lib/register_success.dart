import 'package:brb/constants/apppadding.dart';
import 'package:brb/widgets/app_button.dart';
import 'package:flutter/material.dart';

import '../../constants/appcolors.dart';
import '../../widgets/app_text.dart';
import 'bottomnav.dart';

class SuccessfullRegister extends StatelessWidget {
  const SuccessfullRegister({super.key});

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
          text: "Reset Password",
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: AppPadding.defaultPadding,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset("assets/success.png"),
            const Spacer(),
            AppButton(btnText: "Continue To Home", ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return BottomNavigation();
                  }));
            },),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
