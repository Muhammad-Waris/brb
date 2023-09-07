import 'package:brb/editpersonaldata.dart';
import 'package:brb/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'customersupport.dart';
import 'deposit_amount.dart';
import 'notification.dart';
import 'withdraw_amount1.dart';

class accountsettings extends StatelessWidget {
  const accountsettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE8F593),
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //space
            const SizedBox(
              height: 12,
            ),
            //main container
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 12),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppText(text: "James Willson", fontSize: MediaQuery.of(context).size.width/22, fontWeight: FontWeight.w400, color: const Color(0xffFFC000),),
                      const SizedBox(height: 5,),
                      AppText(text: "Balance:   \$2000", fontSize: MediaQuery.of(context).size.width/26, fontWeight: FontWeight.w400, color: const Color(0xff000000),),
                      SizedBox(height: MediaQuery.of(context).size.height/30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return depositamount();
                                    }));
                              },
                              child: RoundedButton(text: 'Deposit', color: Color(0xffFFC000),)),
                          SizedBox(width: 10), // Adding some space between the buttons
                          InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return WithdrawAmount();
                                    }));
                              },
                              child: RoundedButton(text: 'Withdraw', color: Color(0xffFFC000))),
                        ],
                      ),
                      ],
                  ),
                ),

              ),
            ),
            //space
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            //divider
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xffD9D9D9),
            ),
            //Edit personal details container
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => editpersonaldata()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 12),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.edit,color: const Color(0xffFFC000), size: MediaQuery.of(context).size.width/22,),
                        SizedBox(width: MediaQuery.of(context).size.width/40,),
                        AppText(text: "Edit personal data", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.w400, color: const Color(0xff000000),),
                                ],
                    ),
                  ),

                ),
              ),
            ),
            //space
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            //divider
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xffD9D9D9),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return customersupport();
                    }));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 12),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.support_agent_sharp,color: const Color(0xffFFC000), size: MediaQuery.of(context).size.width/22,),
                        SizedBox(width: MediaQuery.of(context).size.width/40,),
                        AppText(text: "Contact Support", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.w400, color: const Color(0xff000000),),
                      ],
                    ),
                  ),

                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xffD9D9D9),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(text: "Account", fontSize: MediaQuery.of(context).size.width/24, fontWeight: FontWeight.w600, color: const Color(0xffFFC000),),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(text: "Gaming ID", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xff000000),),
                      AppText(text: "54724729382", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xffFFC000),),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(text: "Username", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xff000000),),
                      InkWell(child: AppText(text: "Add", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xffFFC000),)),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(text: "Email", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xff000000),),
                      InkWell(child: AppText(text: "Link", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xffFFC000),)),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(text: "Phone number", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xff000000),),
                      InkWell(child: AppText(text: "Link", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xffFFC000),)),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(text: "Password", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xff000000),),
                      InkWell(child: AppText(text: "Change", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xffFFC000),)),

                    ],
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xffD9D9D9),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(text: "Personal Information", fontSize: MediaQuery.of(context).size.width/24, fontWeight: FontWeight.w600, color: const Color(0xffFFC000),),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(text: "Name", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xff000000),),
                      AppText(text: "Alex", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xffFFC000),),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(text: "Surname", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xff000000),),
                      InkWell(child: AppText(text: "Jackson", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xffFFC000),)),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(text: "Country", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xff000000),),
                      InkWell(child: AppText(text: "USA", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xffFFC000),)),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(text: "City", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xff000000),),
                      InkWell(child: AppText(text: "New York", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xffFFC000),)),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(text: "Password", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xff000000),),
                      InkWell(child: AppText(text: "Change", fontSize: MediaQuery.of(context).size.width/28, fontWeight: FontWeight.normal, color: const Color(0xffFFC000),)),

                    ],
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),





          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xff0E4004),
      title: const AppText(text: "Account Settings", fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white,),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications, color: Colors.white,),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => notificationscreen()),
            );
          },
        ),
      ],
    );
  }
}


class RoundedButton extends StatelessWidget {
  final String text;
  final Color color;

  const RoundedButton({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}