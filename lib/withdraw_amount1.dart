import 'package:brb/constants/apppadding.dart';
import 'package:flutter/material.dart';

import '../../constants/appcolors.dart';
import '../../widgets/app_text.dart';
import 'notification.dart';
import 'withdraw_success_screen3.dart';

class WithdrawAmount extends StatelessWidget {
  const WithdrawAmount({super.key});

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
          text: "Withdraw Success",
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white,),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => notificationscreen()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.defaultPadding,
          child: Column(
            children: [
              const SizedBox(
                height: 22,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    text: "Choose Method Below",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const WithdrawSuccess3();
                      }));
                    },
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.27,
                        child: Image.asset("assets/bkash.png")),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: Image.asset("assets/hindi.png")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: Image.asset("assets/rocket.png")),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: Image.asset("assets/upay.png")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: Image.asset("assets/tether.png")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: Image.asset("assets/rocket.png")),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                        onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const WithdrawSuccess3();
                      }));
                    },
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.27,
                        child: Image.asset("assets/bkash.png")),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: Image.asset("assets/hindi.png")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: Image.asset("assets/rocket.png")),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: Image.asset("assets/upay.png")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: Image.asset("assets/tether.png")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: Image.asset("assets/rocket.png")),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                        onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const WithdrawSuccess3();
                      }));
                    },
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.27,
                        child: Image.asset("assets/bkash.png")),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: Image.asset("assets/hindi.png")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: Image.asset("assets/rocket.png")),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: Image.asset("assets/upay.png")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: Image.asset("assets/tether.png")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: Image.asset("assets/rocket.png")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
