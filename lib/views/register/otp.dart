import 'package:brb/constants/apppadding.dart';
import 'package:brb/views/register/register_success.dart';
import 'package:brb/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../constants/appcolors.dart';
import '../../widgets/app_text.dart';

class Otp extends StatelessWidget {
  Otp({super.key});

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
          text: "Otp Verification",
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              const AppText(
                text: "Otp Verification",
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.66,
                child: const AppText(
                  text: "please enter otop code sent to you",
                  textAlign: TextAlign.center,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 45),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Pinput(
                  slideTransitionBeginOffset: const Offset(2, 0),
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedpin,
                  submittedPinTheme: submited,
                ),
              ),
              const SizedBox(height: 45),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(text: "Didn't get any code? "),
                  AppText(
                    text: "Resend",
                    color: AppColors.yellowColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ],
              ),
              const SizedBox(height: 45),
              AppButton(
                  btnText: "Verify",
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SuccessfullRegister();
                    }));
                  })
            ],
          ),
        ),
      ),
    );
  }

  final submited = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 253, 247, 210),
      borderRadius: BorderRadius.circular(15),
    ),
  );

  final focusedpin = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 253, 247, 210),
      borderRadius: BorderRadius.circular(15),
    ),
  );
  final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 253, 247, 210),
        borderRadius: BorderRadius.circular(15),
      ));
}
