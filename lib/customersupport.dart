import 'package:brb/widgets/app_text.dart';
import 'package:flutter/material.dart';

class customersupport extends StatelessWidget {
  const customersupport({super.key});

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
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/support.png", width: MediaQuery.of(context).size.width/5,),
                  SizedBox(height: 5,),
                  AppText(text: "Hey How may i help you?", fontSize: MediaQuery.of(context).size.width/26, fontWeight: FontWeight.w400, color: const Color(0xffFFC000),),
                  SizedBox(height: MediaQuery.of(context).size.height/20,),
                  ChatNowButton(),
                ],
              ),
            ),
            //space
            SizedBox(height: MediaQuery.of(context).size.height/30,),






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
      backgroundColor: const Color(0xff0E4004),
      title: const AppText(text: "Customer Support", fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white,),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications, color: Colors.white,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}


class ChatNowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xffFFC000),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            'Chat Now',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}