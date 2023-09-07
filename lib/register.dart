import 'package:brb/constants/apppadding.dart';
import 'package:brb/otp.dart';
import 'package:brb/widgets/app_button.dart';
import 'package:brb/widgets/app_input_field.dart';
import 'package:flutter/material.dart';

import '../../constants/appcolors.dart';
import '../../widgets/app_text.dart';
import 'login.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
          text: "Register",
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.defaultPadding,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  AppText(
                    text: "Create a ",
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  AppText(
                    text: "BRB",
                    color: AppColors.yellowColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              const Row(
                children: [
                  AppText(
                    text: "account",
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const AppInputField(hintText: "Full Name"),
              const AppInputField(hintText: "Last Name"),
              const AppInputField(
                hintText: "Enter Mobile Number",
                keyboardtype: TextInputType.number,
              ),
              const AppInputField(
                hintText: "Password",
                suffixIcon: Icon(Icons.visibility_off_outlined),
              ),
              const AppInputField(
                hintText: "Re-type Password",
                suffixIcon: Icon(Icons.visibility_off_outlined),
              ),
              const AppInputField(
                hintText: "Date of Birth",
                keyboardtype: TextInputType.datetime,
              ),
              const AppInputField(hintText: "Place of Birth"),
              const AppInputField(hintText: "Religion"),
              const AppInputField(hintText: "City"),
              const SizedBox(
                height: 30,
              ),
              AppButton(btnText: "Continue", ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return Otp();
                    }));
              },),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AppText(text: "Already have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginScreen();
                      }));
                    },
                    child: const AppText(
                      text: "Login",
                      color: AppColors.yellowColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
