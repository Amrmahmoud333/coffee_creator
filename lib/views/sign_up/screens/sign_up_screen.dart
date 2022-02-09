import 'package:auto_size_text/auto_size_text.dart';
import 'package:coffee_creator/views/home/home_screen.dart';
import 'package:coffee_creator/views/login/login_screen.dart';
import 'package:coffee_creator/views/sign_up/widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/signup';
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height(double n) {
      return MediaQuery.of(context).size.height * (n / 851);
    }

    double width(double n) {
      return MediaQuery.of(context).size.width * (n / 393);
    }

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            ImageWidget(),
            Form(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width(40)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height(54),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: height(42),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'First name',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width(17),
                        ),
                        Expanded(
                          child: Container(
                            height: height(42),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Last name',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height(38),
                    ),
                    Container(
                      height: height(42),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height(38),
                    ),
                    Container(
                      height: height(42),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Password",
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height(38),
                    ),
                    Container(
                      height: height(42),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Mobile number",
                          prefixIcon: Icon(Icons.phone_android),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height(36),
                    ),
                    Center(
                      child: Container(
                        height: height(56), // 6
                        width: width(180),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, HomeScreen.routeName);
                          },
                          child: AutoSizeText(
                            'Sign up',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height(40.5)),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width(10)),
                  child: AutoSizeText(
                    'OR',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height(20.5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: width(136),
                  height: height(43),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: SvgPicture.asset('assets/images/Facebook.svg'),
                          width: width(20),
                          height: height(30),
                        ),
                        SizedBox(
                          width: width(2),
                        ),
                        AutoSizeText(
                          'Facebook',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: width(136),
                  height: height(43),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: SvgPicture.asset('assets/images/Google.svg'),
                          width: width(20),
                          height: height(30),
                        ),
                        SizedBox(
                          width: width(2),
                        ),
                        AutoSizeText(
                          'Google',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
             Spacer(),
            Container(
              height: height(53), // 6
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(height(15)),
                    topLeft: Radius.circular(height(15))),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    'Have already an account ,',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.routeName);
                    },
                    child: AutoSizeText(
                      'Log in.',
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
