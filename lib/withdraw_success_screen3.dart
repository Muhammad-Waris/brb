import 'package:brb/constants/apppadding.dart';
import 'package:brb/widgets/app_button.dart';
import 'package:flutter/material.dart';
import '../../constants/appcolors.dart';
import '../../widgets/app_text.dart';
import 'bottomnav.dart';
import 'notification.dart';

class WithdrawSuccess3 extends StatelessWidget {
  const WithdrawSuccess3({super.key});

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
      body: Padding(
        padding: AppPadding.defaultPadding,
        child: Column(
          children: [
            const SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/bkash2.png",
                  height: 133,
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const AppText(
              text: "Payment has been withdrawn Successful",
              fontSize: 20,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 18,
            ),
            Card(
              child: Container(
                height: 270,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: const Padding(
                  padding: AppPadding.defaultPadding,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          AppText(text: "Payment Information"),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AppText(
                                text: "Agent Name",
                                fontSize: 12,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              AppText(
                                text: "Wallet Number",
                                fontSize: 12,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              AppText(
                                text: "Amount",
                                fontSize: 12,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              AppText(
                                text: "Wallet ID",
                                fontSize: 12,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              AppText(
                                text: "Transaction ID",
                                fontSize: 12,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AppText(
                                text: "Jack Rachered",
                                fontSize: 12,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              AppText(
                                text: "1412344255523",
                                fontSize: 12,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              AppText(
                                text: "2000",
                                fontSize: 12,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              AppText(
                                text: "132",
                                fontSize: 12,
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              AppText(
                                text: "131314",
                                fontSize: 12,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            AppButton(btnText: "Back to Home", ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return BottomNavigation();
                  }));
            },),
          ],
        ),
      ),
    );
  }
}
