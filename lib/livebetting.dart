import 'package:brb/constants/apppadding.dart';
import 'package:flutter/material.dart';

import '../../constants/appcolors.dart';
import '../../widgets/app_text.dart';
import 'deposit_amount.dart';
import 'game.dart';
import 'notification.dart';

class livebetting extends StatelessWidget {
  const livebetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {},
          child: Container(
              padding: const EdgeInsets.only(left: 20),
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset("assets/brb.png")),
        ),
        backgroundColor: AppColors.primaryColor,
        actions: [
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
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.defaultPadding,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: "Sports",
                    fontSize: 17,
                  ),
                  AppText(
                    text: "View all",
                    fontSize: 12,
                  ),
                ],
              ),
              const SizedBox(
                height: 11,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CurrentGame(),),
                        );
                      },

                      child: Column(
                        children: [
                          Image.asset(
                            "assets/sports1.png",
                            width: MediaQuery.of(context).size.width * 0.38,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const AppText(text: "Tenis Bat")
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CurrentGame(),),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/sports2.png",
                            width: MediaQuery.of(context).size.width * 0.38,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const AppText(text: "Betting")
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CurrentGame(),),
                        );
                      },
                      child: InkWell(
                        onTap: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CurrentGame(),),
                      );
                      },
                        child: InkWell(
                          onTap: (){
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CurrentGame(),),
                        );
                        },
                          child: InkWell(
                            onTap: (){
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CurrentGame(),),
                          );
                          },
                            child: InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => CurrentGame(),),
                                );
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/sports1.png",
                                    width: MediaQuery.of(context).size.width * 0.38,
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  const AppText(text: "Tenis Bat")
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: "Snooker",
                    fontSize: 17,
                  ),
                  AppText(
                    text: "View all",
                    fontSize: 12,
                  ),
                ],
              ),
              const SizedBox(
                height: 11,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CurrentGame(),),
              );
              },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/snooker1.png",
                            width: MediaQuery.of(context).size.width * 0.38,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const AppText(text: "Tenis Bat")
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CurrentGame(),),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/snooker2.png",
                            width: MediaQuery.of(context).size.width * 0.38,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const AppText(text: "World Sports")
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CurrentGame(),),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/snooker1.png",
                            width: MediaQuery.of(context).size.width * 0.38,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const AppText(text: "Tenis Bat")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: "Casino",
                    fontSize: 17,
                  ),
                  AppText(
                    text: "View all",
                    fontSize: 12,
                  ),
                ],
              ),
              const SizedBox(
                height: 11,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CurrentGame(),),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/casino.png",
                            width: MediaQuery.of(context).size.width * 0.38,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const AppText(text: "Betting")
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CurrentGame(),),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/snooker2.png",
                            width: MediaQuery.of(context).size.width * 0.38,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const AppText(text: "Tenis Bat")
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CurrentGame(),),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/snooker1.png",
                            width: MediaQuery.of(context).size.width * 0.38,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const AppText(text: "World Sports")
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
