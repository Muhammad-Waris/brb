import 'dart:ui';
import 'package:brb/widgets/app_text.dart';
import 'package:flutter/material.dart';

import 'deposit_amount.dart';
import 'login.dart';
import 'notification.dart';
import 'odds_screen.dart';
import 'register.dart';
import 'widgets/app_button.dart';



class HomePage extends StatelessWidget {
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
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //register button
                AppButton(btnText: "Log in", ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }));
                }, width: MediaQuery.of(context).size.width/2.2,),

                AppButton(btnText: "New Account", ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return RegisterScreen();
                      }));
                }, width: MediaQuery.of(context).size.width/2.2,),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OddsScreen(),),
                );
              },
              child: Image.asset(
                'assets/cover.png',
              ),
            ),
            //space
            SizedBox(
              height: 12,
            ),
            //live or soirts book
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xffFFC000),
                ),
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.height/20,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //live
                      Row(
                        children: [
                          Image.asset("assets/liveicon.png", width: 20,height: 20,),
                          SizedBox(width: 5,),
                          AppText(text: "Live", fontSize: 12, fontWeight: FontWeight.bold,),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 1,
                        color: Colors.black54,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/sportsbookicon.png", width: 20,height: 20,),
                          SizedBox(width: 5,),
                          AppText(text: "Sports Book", fontSize: 12, fontWeight: FontWeight.bold,),
                        ],
                      ),


                    ],
                  ),
                ),
              ),
            ),
            //icons
            SizedBox(
              height: 12,
            ),
            //balls icons list in row
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xffFFC000),
                ),
                width: MediaQuery.of(context).size.width/1,
                height: MediaQuery.of(context).size.height/20,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/ball1.png", width: 20, height: 20,),
                      Image.asset("assets/ball2.png", width: 20, height: 20,),
                      Image.asset("assets/ball1.png", width: 20, height: 20,),
                      Image.asset("assets/ball3.png", width: 20, height: 20,),
                      Image.asset("assets/shuttle.png", width: 20, height: 20,),
                      Image.asset("assets/ball1.png", width: 20, height: 20,),
                      Image.asset("assets/ball2.png", width: 20, height: 20,),
                      Image.asset("assets/ball1.png", width: 20, height: 20,),
                    ],
                  ),
                ),
              ),
            ),
            //teams portals below
            //teamportal1
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 12),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //first row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/teamicon.png", width: 20,height: 20,),
                              SizedBox(width: 5,),
                              AppText(text: "Westindies, Group A", fontSize: 12, fontWeight: FontWeight.normal,),
                            ],
                          ),
                          Row(
                            children: [
                              AppText(text: "08:10/12:45", fontSize: 12, fontWeight: FontWeight.normal,),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(text: "Portal", fontWeight: FontWeight.bold),
                              AppText(text: "Live Score", fontWeight: FontWeight.bold),
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => OddsScreen(),),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffF6F7F8),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                    child: Column(
                                      children: [
                                        AppText(text: "1"),
                                        AppText(text: "3.47"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              //second box X
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF6F7F8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                  child: Column(
                                    children: [
                                      AppText(text: "x"),
                                      AppText(text: "2.44"),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              //third box 2
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF6F7F8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                  child: Column(
                                    children: [
                                      AppText(text: "2"),
                                      AppText(text: "3.90"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),

              ),
            ),
            //teamportal2
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 12),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //first row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/teamicon.png", width: 20,height: 20,),
                              SizedBox(width: 5,),
                              AppText(text: "Westindies, Group A", fontSize: 12, fontWeight: FontWeight.normal,),
                            ],
                          ),
                          Row(
                            children: [
                              AppText(text: "08:10/12:45", fontSize: 12, fontWeight: FontWeight.normal,),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(text: "Portal", fontWeight: FontWeight.bold),
                              AppText(text: "Live Score", fontWeight: FontWeight.bold),
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => OddsScreen(),),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffF6F7F8),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                    child: Column(
                                      children: [
                                        AppText(text: "1"),
                                        AppText(text: "3.47"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              //second box X
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF6F7F8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                  child: Column(
                                    children: [
                                      AppText(text: "x"),
                                      AppText(text: "2.44"),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              //third box 2
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF6F7F8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                  child: Column(
                                    children: [
                                      AppText(text: "2"),
                                      AppText(text: "3.90"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),

              ),
            ),
            //teamportal3
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 12),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //first row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/teamicon.png", width: 20,height: 20,),
                              SizedBox(width: 5,),
                              AppText(text: "Westindies, Group A", fontSize: 12, fontWeight: FontWeight.normal,),
                            ],
                          ),
                          Row(
                            children: [
                              AppText(text: "08:10/12:45", fontSize: 12, fontWeight: FontWeight.normal,),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(text: "Portal", fontWeight: FontWeight.bold),
                              AppText(text: "Live Score", fontWeight: FontWeight.bold),
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => OddsScreen(),),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffF6F7F8),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                    child: Column(
                                      children: [
                                        AppText(text: "1"),
                                        AppText(text: "3.47"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              //second box X
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF6F7F8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                  child: Column(
                                    children: [
                                      AppText(text: "x"),
                                      AppText(text: "2.44"),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              //third box 2
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF6F7F8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                  child: Column(
                                    children: [
                                      AppText(text: "2"),
                                      AppText(text: "3.90"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),

              ),
            ),
            //teamportal4
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 12),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //first row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/teamicon.png", width: 20,height: 20,),
                              SizedBox(width: 5,),
                              AppText(text: "Westindies, Group A", fontSize: 12, fontWeight: FontWeight.normal,),
                            ],
                          ),
                          Row(
                            children: [
                              AppText(text: "08:10/12:45", fontSize: 12, fontWeight: FontWeight.normal,),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(text: "Portal", fontWeight: FontWeight.bold),
                              AppText(text: "Live Score", fontWeight: FontWeight.bold),
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => OddsScreen(),),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffF6F7F8),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                    child: Column(
                                      children: [
                                        AppText(text: "1"),
                                        AppText(text: "3.47"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              //second box X
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF6F7F8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                  child: Column(
                                    children: [
                                      AppText(text: "x"),
                                      AppText(text: "2.44"),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              //third box 2
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF6F7F8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                  child: Column(
                                    children: [
                                      AppText(text: "2"),
                                      AppText(text: "3.90"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),

              ),
            ),
            //teamportal5
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 12),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //first row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/teamicon.png", width: 20,height: 20,),
                              SizedBox(width: 5,),
                              AppText(text: "Westindies, Group A", fontSize: 12, fontWeight: FontWeight.normal,),
                            ],
                          ),
                          Row(
                            children: [
                              AppText(text: "08:10/12:45", fontSize: 12, fontWeight: FontWeight.normal,),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(text: "Portal", fontWeight: FontWeight.bold),
                              AppText(text: "Live Score", fontWeight: FontWeight.bold),
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => OddsScreen(),),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffF6F7F8),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                    child: Column(
                                      children: [
                                        AppText(text: "1"),
                                        AppText(text: "3.47"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              //second box X
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF6F7F8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                  child: Column(
                                    children: [
                                      AppText(text: "x"),
                                      AppText(text: "2.44"),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              //third box 2
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF6F7F8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                  child: Column(
                                    children: [
                                      AppText(text: "2"),
                                      AppText(text: "3.90"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),

              ),
            ),
            //teamportal6
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 12),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //first row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/teamicon.png", width: 20,height: 20,),
                              SizedBox(width: 5,),
                              AppText(text: "Westindies, Group A", fontSize: 12, fontWeight: FontWeight.normal,),
                            ],
                          ),
                          Row(
                            children: [
                              AppText(text: "08:10/12:45", fontSize: 12, fontWeight: FontWeight.normal,),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(text: "Portal", fontWeight: FontWeight.bold),
                              AppText(text: "Live Score", fontWeight: FontWeight.bold),
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => OddsScreen(),),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffF6F7F8),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                    child: Column(
                                      children: [
                                        AppText(text: "1"),
                                        AppText(text: "3.47"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              //second box X
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF6F7F8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                  child: Column(
                                    children: [
                                      AppText(text: "x"),
                                      AppText(text: "2.44"),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              //third box 2
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF6F7F8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                  child: Column(
                                    children: [
                                      AppText(text: "2"),
                                      AppText(text: "3.90"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 12),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //first row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/teamicon.png", width: 20,height: 20,),
                              SizedBox(width: 5,),
                              AppText(text: "Westindies, Group A", fontSize: 12, fontWeight: FontWeight.normal,),
                            ],
                          ),
                          Row(
                            children: [
                              AppText(text: "08:10/12:45", fontSize: 12, fontWeight: FontWeight.normal,),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(text: "Portal", fontWeight: FontWeight.bold),
                              AppText(text: "Live Score", fontWeight: FontWeight.bold),
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => OddsScreen(),),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffF6F7F8),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                    child: Column(
                                      children: [
                                        AppText(text: "1"),
                                        AppText(text: "3.47"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              //second box X
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF6F7F8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                  child: Column(
                                    children: [
                                      AppText(text: "x"),
                                      AppText(text: "2.44"),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width/80,
                              ),
                              //third box 2
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF6F7F8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
                                  child: Column(
                                    children: [
                                      AppText(text: "2"),
                                      AppText(text: "3.90"),
                                    ],
                                  ),
                                ),
                              ),
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
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 80.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xff0E4004),

      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/launch.png', // Replace with your logo image path
            width: 60,
            height: 60,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  // Add your button click logic here
                  print('Button tapped');
                },
                child: Container(
                  width: 90.0,
                  height: 35.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0x4cffffff)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => depositamount(),),
                          );
                        },
                        child: Icon(
                          Icons.add_circle,
                          size: 25,
                          color: Color(0xffFFC000),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      AppText(text: "70000", color: Colors.white, fontSize: 12),
                    ],
                  ),
                ),
              ),
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
        ],
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: Padding(
          padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0), // Adjust top padding here
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0x4cffffff)),
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search live events',
                hintStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.search, color: Colors.white,),
              ),
            ),
          ),
        ),
      ),
    );
  }
}