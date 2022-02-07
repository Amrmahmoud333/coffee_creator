import 'package:flutter/material.dart';

class ContainerText extends StatelessWidget {
  final text;
  final width, hight;
  final fontSize;
  ContainerText(this.text, this.width, this.hight, this.fontSize);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight,
      child: Text(
        text,
        style: TextStyle(
            color: const Color(0xff000000),
            fontWeight: FontWeight.w400,
            fontFamily: "Roboto",
            fontStyle: FontStyle.normal,
            fontSize: fontSize),
        textAlign: TextAlign.left,
      ),
    );
  }
}
