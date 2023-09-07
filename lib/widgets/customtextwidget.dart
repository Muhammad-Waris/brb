import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final Backgroundcolor;
  final Decoration;
  final Fontweight;
  final Fontfamily;


  CustomTextWidget({required this.text, this.Fontfamily, this.Fontweight, this.Backgroundcolor,this.Decoration, this.fontSize = 16.0, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        backgroundColor: Backgroundcolor,
        fontSize: fontSize,
        decoration: Decoration,
        fontWeight: Fontweight,
        fontFamily: Fontfamily,
        color: color,
      ),
    );
  }
}