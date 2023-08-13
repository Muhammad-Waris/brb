import 'package:brb/constants/appcolors.dart';
import 'package:brb/constants/apppadding.dart';
import 'package:brb/views/register/forgot_password.dart';
import 'package:brb/views/register/register.dart';
import 'package:brb/widgets/app_button.dart';
import 'package:brb/widgets/app_input_field.dart';
import 'package:brb/widgets/app_text.dart';
import 'package:flutter/material.dart';

import '../home/withdraw_amount1.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // leading: Container(
        //     height: 33,
        //     width: 33,
        //     decoration: const BoxDecoration(
        //       shape: BoxShape.circle,
        //     ),
        //     child: const Icon(
        //       Icons.arrow_back,
        //       color: Colors.white,
        //     )),
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: const AppText(
          text: "Sign in",
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const AppText(
                text: "Hi There! 👋",
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              const AppText(
                text: "Welcome back, Sign in to your account",
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(
                height: 25,
              ),
              const AppInputField(hintText: "Email"),
              const AppInputField(
                hintText: "Password",
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ForgotPassword();
                  }));
                },
                child: const AppText(
                  text: "Forgot Password?",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.yellowColor,
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              AppButton(
                  btnText: "Sign In",
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const WithdrawAmount1();
                    }));
                  }),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AppText(text: "Don't have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const RegisterScreen();
                      }));
                    },
                    child: const AppText(
                      text: "Sign Up",
                      color: AppColors.yellowColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
