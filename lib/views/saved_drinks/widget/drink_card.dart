import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrinkCard extends StatelessWidget {
  String? _imageURL;
  DrinkCard(this._imageURL);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 141.w,
          height: 210.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(_imageURL!),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
            border: Border.all(color: Colors.white, width: 5),
          ),
        ),
        Positioned(
          left: 14.3.w,
          bottom: 145.h,
          top: 25.h,
          right: 90.w,
          child: SvgPicture.asset(
            'assets/images/star1.svg',
            width: 40.w,
            height: 40.h,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
