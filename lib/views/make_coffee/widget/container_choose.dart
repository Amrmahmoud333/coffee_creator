import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ContainerChoose extends StatelessWidget {
  final text;
  final width, hight;
  final fontSize;
  bool _isChoosen;
  ContainerChoose(
      this.text, this.width, this.hight, this.fontSize, this._isChoosen);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(18)),
        border: Border.all(color: const Color(0xffe6d6c7), width: 2),
        color: _isChoosen
            ? Color(0xffe6d6c7)
            : Colors.white, //TODO change with white
      ),
      child: Center(
        child: AutoSizeText(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: const Color(0xff000000),
            fontWeight: FontWeight.w400,
            fontFamily: 'Roboto',
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
