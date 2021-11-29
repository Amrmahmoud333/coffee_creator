import 'package:coffee_creator/modules/login/widgets/form_widget.dart';
import 'package:coffee_creator/modules/login/widgets/rounded_title_widget.dart';
import 'package:coffee_creator/modules/login/widgets/separate_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/login_pptions_widget.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ), // 10
            RoundedTitleWidget(), // 25
            FormWidget(), // 30
            Container(
              height: MediaQuery.of(context).size.height * 0.06, // 6
              width: MediaQuery.of(context).size.width * 0.45,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Log in',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03, // 3
            ),
            SeparateWidget(), // 5
            LoginOptionsWidget(), // 10
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ), // 5
            Container(
              height: MediaQuery.of(context).size.height * 0.06, // 6
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account ,',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign up.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffae947f),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
