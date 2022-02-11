import 'package:auto_size_text/auto_size_text.dart';
import 'package:coffee_creator/views/login/login_screen.dart';
import 'package:coffee_creator/views/sign_up/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     double height(double n) {
      return (MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top) *
          (n / 851);
    }

    double width(double n) {
      return MediaQuery.of(context).size.width * (n / 393);
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height(450),
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/images/welcome.jpeg'),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: height(47)),
            Container(
              height: height(136),
              width: width(291),
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
              height: height(54),
              width: width(213),
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
              height: height(22),
            ),
            Container(
              height: height(54),
              width: width(213),
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
