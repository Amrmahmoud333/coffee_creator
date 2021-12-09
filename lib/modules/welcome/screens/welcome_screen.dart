import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 450.h,
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/images/welcome.jpeg'),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 47.h),
            Container(
              height: 136.h,
              width: 291.w,
              child: Center(
                child: Text(
                  'Create & Drinking your coffee as you like, Now just breathe,relax and enjoy to have your coffee.',
                  style: TextStyle(
                    fontSize: 22.sp,
                  ),
                ),
              ),
            ),
            Container(
              height: 54.h,
              width: 213.w,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: 28.sp,
                  ),
                ),
              ),
            ),
            SizedBox(height: 22.h,),
            Container(
              height: 54.h,
              width: 213.w,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 28.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
