import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
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
      body: Column(
        children: [
          SizedBox(
            height: height(69),
          ), // 10
          Center(
            child: Container(
              height: height(211),
              width: height(211),
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
                borderRadius: BorderRadius.circular(height(211)),
                color: Colors.white,
              ),
              child: Center(
                child: AutoSizeText(
                  'Coffee\nCreator',
                  style: TextStyle(
                    fontFamily: 'Onyx',
                    fontSize: 80,
                    color: Color(0xff644536),
                  ),
                ),
              ),
            ),
          ), // 25
          Form(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width(40)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height(23),
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
                    height: height(50),
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
                    height: height(4),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: AutoSizeText(
                          'forget password?',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height(55),
          ),
          Container(
            height: height(56), // 6
            width: width(180),
            child: ElevatedButton(
              onPressed: () {},
              child: AutoSizeText(
                'Log in',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
          ),
          SizedBox(height: height(50.5)),
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
            height: height(31.5),
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
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(height(15)), topLeft: Radius.circular(height(15))),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  'Don\'t have an account ,',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: AutoSizeText(
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
    );
  }
}