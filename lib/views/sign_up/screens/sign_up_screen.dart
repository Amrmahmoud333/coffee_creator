import 'package:auto_size_text/auto_size_text.dart';
import 'package:coffee_creator/data/models/auth_model/auth_model.dart';
import 'package:coffee_creator/providers/auth_provider/auth_provider.dart';
import 'package:coffee_creator/views/login/login_screen.dart';
import 'package:coffee_creator/views/sign_up/widgets/image_widget.dart';
import 'package:coffee_creator/views/sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/signup';
  final TextEditingController fnameController = TextEditingController();
  final TextEditingController lnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  late final UserData userData;
  late Sizer s;
  @override
  Widget build(BuildContext context) {
    s = Sizer(context: context);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).padding.top,
            child: Column(
              children: [
                ImageWidget(),
                Form(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: s.w(40)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: s.h(64),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: s.h(42),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'First name',
                                    border: OutlineInputBorder(),
                                  ),
                                  controller: fnameController,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: s.w(17),
                            ),
                            Expanded(
                              child: Container(
                                height: s.h(42),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Last name',
                                    border: OutlineInputBorder(),
                                  ),
                                  controller: lnameController,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: s.h(38),
                        ),
                        Container(
                          height: s.h(42),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Email",
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(),
                            ),
                            controller: emailController,
                          ),
                        ),
                        SizedBox(
                          height: s.h(38),
                        ),
                        Container(
                          height: s.h(42),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Password",
                              prefixIcon: Icon(Icons.password),
                              border: OutlineInputBorder(),
                            ),
                            controller: passwordController,
                          ),
                        ),
                        SizedBox(
                          height: s.h(40),
                        ),
                        Container(
                          height: s.h(42),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Mobile number",
                              prefixIcon: Icon(Icons.phone_android),
                              border: OutlineInputBorder(),
                            ),
                            controller: mobileNumberController,
                          ),
                        ),
                        SizedBox(
                          height: s.h(36),
                        ),
                        Center(
                          child: Container(
                            height: s.h(56), // 6
                            width: s.w(180),
                            child: ElevatedButton(
                              onPressed: () async {
                                //Navigator.pushNamed(context, HomeScreen.routeName);
                                userData = UserData(
                                    fname: fnameController.text,
                                    lname: lnameController.text,
                                    email: emailController.text,
                                    phone: mobileNumberController.text);
                                await Provider.of<AuthProvider>(context,
                                        listen: false)
                                    .signUp(
                                  emailController.text,
                                  passwordController.text,
                                );
                                await Provider.of<AuthProvider>(context,
                                        listen: false)
                                    .setUserData(userData);
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
                SizedBox(height: s.h(50.5)),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: s.w(10)),
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
                  height: s.h(20.5),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: s.w(136),
                      height: s.h(43),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                  'assets/images/Facebook.svg'),
                              width: s.w(20),
                              height: s.h(30),
                            ),
                            SizedBox(
                              width: s.w(2),
                            ),
                            AutoSizeText(
                              'Facebook',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: s.w(136),
                      height: s.h(43),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child:
                                  SvgPicture.asset('assets/images/Google.svg'),
                              width: s.w(20),
                              height: s.h(30),
                            ),
                            SizedBox(
                              width: s.w(2),
                            ),
                            AutoSizeText(
                              'Google',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: s.h(53), // 6
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(s.h(15)),
                        topLeft: Radius.circular(s.h(15))),
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
        ),
      ),
    );
  }
}
