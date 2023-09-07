import 'dart:ui';
import 'package:brb/widgets/app_button.dart';
import 'package:brb/widgets/app_field.dart';
import 'package:brb/widgets/app_text.dart';
import 'package:flutter/material.dart';

import 'depositsuccess.dart';

class depositamount1 extends StatelessWidget {
  const depositamount1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F593),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //space
              SizedBox(
                height: 12,
              ),
              //Personalprofileheading
              AppText(text: "Deposit Rocket", fontSize: MediaQuery.of(context).size.width/24, fontWeight: FontWeight.w500, color: const Color(0xff000000),),
              //space
              SizedBox(
                height: 16,
              ),
              //Personalprofileparagraph
              AppText(text: "Before requesting a deposit, please make a transfer using the payment details, We accept Cashout Only.",
                fontSize: MediaQuery.of(context).size.width/35, fontWeight: FontWeight.normal, color: const Color(0xff6F7355),),
              SizedBox(
                height: 16,
              ),
              //f-name
              AppField(
                textType: TextInputType.name,
                hintText: "First name",
              ),
              SizedBox(
                height: 16,
              ),
              //Amount
              AppField(
                textType: TextInputType.name,
                hintText: "Amount (limit 400 - 5000)",
              ),
              SizedBox(
                height: 16,
              ),
              //Wallet ID
              AppField(
                textType: TextInputType.phone,
                hintText: "Wallet ID",
              ),
              SizedBox(
                height: 16,
              ),
              //Transfer ID
              AppField(
                textType: TextInputType.datetime,
                hintText: "Transfer ID",
              ),
              SizedBox( height: MediaQuery.of(context).size.height/20,),
              AppButton(btnText: "Proceed To Deposit", ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return const depositsuccess();
                    }));
              },),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 10.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xff0E4004),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.white,),),
          AppText(text: "Deposit Details", fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white,),
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white,),
            onPressed: () {
              // Handle notification icon tap
            },
          ),
        ],
      ),
    );
  }
}