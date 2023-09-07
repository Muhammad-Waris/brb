import 'dart:ui';
import 'package:brb/widgets/app_button.dart';
import 'package:brb/widgets/app_field.dart';
import 'package:brb/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'bottomnav.dart';

class recharge extends StatelessWidget {
  const recharge({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F593),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //space
              SizedBox(
                height: 140,
              ),
              //Personalprofileheading
              AppText(text: "Recharge", fontSize: MediaQuery.of(context).size.width/24, fontWeight: FontWeight.bold, color: const Color(0xff000000),),
              //space
              SizedBox( height: MediaQuery.of(context).size.height/30,),
              AppText(text: "Enter amount below you want to recharge in your game", fontSize: MediaQuery.of(context).size.width/30, fontWeight: FontWeight.normal, color: const Color(0xff000000),),
              SizedBox( height: MediaQuery.of(context).size.height/20,),
              //f-name
              AppField(
                textType: TextInputType.number,
                hintText: "Enter Amount",
              ),
              SizedBox( height: MediaQuery.of(context).size.height/20,),
              AppButton(btnText: "Recharge Now", ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return const BottomNavigation();
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
          AppText(text: "Recharge", fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white,),
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