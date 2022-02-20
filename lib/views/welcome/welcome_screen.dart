import 'package:auto_size_text/auto_size_text.dart';
import 'package:coffee_creator/views/login/login_screen.dart';
import 'package:coffee_creator/views/sign_up/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../sizer.dart';

class WelcomeScreen extends StatelessWidget {
  late Sizer s;
  @override
  Widget build(BuildContext context) {
    s = Sizer(context: context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: s.h(450),
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/images/welcome.jpeg'),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: s.h(47)),
            Container(
              height: s.h(136),
              width: s.w(291),
              child: Center(
                child: AutoSizeText(
                  'Create & Drinking your coffee as you like, Now just breathe, relax and enjoy to have your coffee.',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Container(
              height: s.h(54),
              width: s.w(213),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
                child: AutoSizeText(
                  'Log in',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: s.h(22),
            ),
            Container(
              height: s.h(54),
              width: s.w(213),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, SignUpScreen.routeName);
                },
                child: AutoSizeText(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 28,
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
