import 'dart:ui';
import 'package:brb/widgets/app_field.dart';
import 'package:brb/widgets/app_text.dart';
import 'package:flutter/material.dart';


class editpersonaldata extends StatelessWidget {
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
              AppText(text: "Personal Profile", fontSize: MediaQuery.of(context).size.width/24, fontWeight: FontWeight.w500, color: const Color(0xff000000),),
              //space
              SizedBox(
                height: 16,
              ),
              //Personalprofileparagraph
              AppText(text: "Once saved, you can only edit the information by contacting Customer Support",
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
              //l-name
              AppField(
                textType: TextInputType.name,
                hintText: "Last name",
              ),
              SizedBox(
                height: 16,
              ),
              //phone-no
              AppField(
                textType: TextInputType.phone,
                hintText: "Mobile number",
              ),
              SizedBox(
                height: 16,
              ),
              //dob
              AppField(
                textType: TextInputType.datetime,
                hintText: "Date of birth",
              ),
              SizedBox(
                height: 16,
              ),
              //placeofbirth
              AppField(
                textType: TextInputType.text,
                hintText: "Place of birth",
              ),
              SizedBox(
                height: 16,
              ),
              //region
              AppField(
                textType: TextInputType.text,
                hintText: "Region",
              ),
              SizedBox(
                height: 16,
              ),
              //city
              AppField(
                textType: TextInputType.text,
                hintText: "City",
              ),
              SizedBox(
                height: 16,
              ),
              //account-no
              AppField(
                textType: TextInputType.text,
                hintText: "Account number",
              ),





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
          AppText(text: "Edit Personal Data", fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white,),
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