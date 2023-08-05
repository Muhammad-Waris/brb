// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, unnecessary_this, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, file_names, library_private_types_in_public_api, no_logic_in_create_state

import 'package:flutter/material.dart';

class OnbordingData extends StatefulWidget {
  final imagePath;
  final title;
  final desc;

  OnbordingData({this.imagePath, this.title, this.desc});

  @override
  _OnbordingDataState createState() =>
      _OnbordingDataState(this.imagePath, this.title, this.desc);
}

class _OnbordingDataState extends State<OnbordingData> {
  final imagePath;
  final title;
  final desc;
  _OnbordingDataState(this.imagePath, this.title, this.desc);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            width: MediaQuery.of(context).size.width / 1.5,
            height: MediaQuery.of(context).size.height * 0.40,
            image: AssetImage(imagePath),
          ),
          SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              title,
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Color(0xff1C1C1C),
                backgroundColor: Color(0xffffffff),
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: 'SF Pro Display',
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              desc,
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Color(0xff606060),
                backgroundColor: Color(0xffffffff),
                fontWeight: FontWeight.w400,
                fontSize: 14,
                fontFamily: 'SF Pro Display',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
