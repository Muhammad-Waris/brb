import 'dart:ui';

import 'package:brb/bottomnav.dart';
import 'package:brb/widgets/app_text.dart';
import 'package:flutter/material.dart';



class notificationscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F593),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //space
            SizedBox(
              height: 12,
            ),
            //Notification1
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 12),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.notifications, color: Color(0xffFFC000),),
                          SizedBox(width: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(text: "Welcome to BRB Bet app", fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black,),
                              SizedBox(height: 5,),
                              AppText(text: "Try your luck to play games.", fontSize: 12, fontWeight: FontWeight.normal, color: Color(0xff808080),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ),
            ),
            //Notification2
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 12),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.notifications, color: Color(0xffFFC000),),
                          SizedBox(width: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(text: "Congrats you win your bet", fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black,),
                              SizedBox(height: 5,),
                              AppText(text: "You won bet of 220\$ withdraw now", fontSize: 12, fontWeight: FontWeight.normal, color: Color(0xff808080),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ),
            ),
            //Notification3
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 12),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.notifications, color: Color(0xffFFC000),),
                          SizedBox(width: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(text: "Sorry you lost", fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black,),
                              SizedBox(height: 5,),
                              AppText(text: "You lost bet of 100\$ better luck next time", fontSize: 12, fontWeight: FontWeight.normal, color: Color(0xff808080),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ),
            ),



          ],
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BottomNavigation()),
            );
          }, icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.white,),),
          AppText(text: "Notifications", fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white,),
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