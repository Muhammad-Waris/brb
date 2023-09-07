import 'package:brb/constants/apppadding.dart';
import 'package:brb/widgets/app_button.dart';
import 'package:brb/widgets/app_input_field.dart';
import 'package:flutter/material.dart';
import '../../constants/appcolors.dart';
import '../../widgets/app_text.dart';
import 'forgetpasswordotp.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 22,
              ),
              Image.asset("assets/lock.png"),
              const SizedBox(
                height: 10,
              ),
              const AppText(
                text: "Passsword Recovery",
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              const AppText(
                text:
                    "Enter your registered email below to receive password instructions",
                fontSize: 16,
              ),
              const SizedBox(
                height: 30,
              ),
              const AppInputField(
                hintText: "Enter your email address",
                keyboardtype: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 50,
              ),
              AppButton(
                  btnText: "Get Otp",
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return  forgetpasswordotp();
                    }));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
