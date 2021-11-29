import 'package:flutter/material.dart';

class RoundedTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.25, // 25
        width: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xff644536),
              blurRadius: 5.0,
              spreadRadius: 1.0,
              offset: Offset(
                25.0,
                0.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(105),
          color: Colors.white,
        ),
        child: Center(
          child: LayoutBuilder(
            builder: (ctx, cot) => Text(
              'Coffee\nCreator',
              style: TextStyle(
                fontFamily: 'Onyx',
                fontSize: cot.maxWidth * 0.4,
                color: Color(0xff644536),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
