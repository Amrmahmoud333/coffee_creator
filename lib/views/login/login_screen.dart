import 'package:auto_size_text/auto_size_text.dart';
import 'package:coffee_creator/data/models/auth_model/auth_model.dart';
import 'package:coffee_creator/providers/auth_provider/auth_provider.dart';
import 'package:coffee_creator/views/home/home_screen.dart';
import 'package:coffee_creator/views/sign_up/screens/sign_up_screen.dart';
import 'package:coffee_creator/views/sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late Sizer s;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    s = Sizer(context: context);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));
    void _showErrorDialog(String message) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('An Error Occurred!'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('Okay'),
              onPressed: () {
                Navigator.of(ctx).pop();
              },
            )
          ],
        ),
      );
    }

    Future<void> _submit() async {
      if (!_formKey.currentState!.validate()) {
        return;
      }
      _formKey.currentState!.save();
      setState(() {
        _isLoading = true;
      });
      var res = await Provider.of<AuthProvider>(context, listen: false)
          .login(AuthRequestModel(email: emailController.text, password: passwordController.text,));
      if (res == 'succeeded') {
        Navigator.pushNamed(context, HomeScreen.routeName);
      } else {
        _showErrorDialog(res);
      }
      setState(() {
        _isLoading = false;
      });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: s.h(69),
              ), // 10
              Center(
                child: Container(
                  height: s.h(211),
                  width: s.h(211),
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
                    borderRadius: BorderRadius.circular(s.h(211)),
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
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: s.w(40)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: s.h(23),
                      ),
                      Container(
                        height: s.h(42),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty || !value.contains('@')) {
                              return 'Invalid email!';
                            }
                            return null;
                          },
                          controller: emailController,
                        ),
                      ),
                      SizedBox(
                        height: s.h(50),
                      ),
                      Container(
                        height: s.h(42),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Password",
                            prefixIcon: Icon(Icons.password),
                            border: OutlineInputBorder(),
                          ),
                          obscureText: true,
                          controller: passwordController,
                          validator: (value) {
                            if (value!.isEmpty || value.length < 5) {
                              return 'Password is too short!';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: s.h(4),
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
                height: s.h(55),
              ),
              Container(
                height: s.h(56), // 6
                width: s.w(180),
                child: ElevatedButton(
                  onPressed: () async {
                    _submit();
                  },
                  child: AutoSizeText(
                    'Log in',
                    style: TextStyle(
                      fontSize: 22,
                    ),
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
                height: s.h(31.5),
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
                            child:
                                SvgPicture.asset('assets/images/Facebook.svg'),
                            width: s.w(20),
                            height: s.h(30),
                          ),
                          SizedBox(
                            width: s.w(2),
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
                    width: s.w(136),
                    height: s.h(43),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: SvgPicture.asset('assets/images/Google.svg'),
                            width: s.w(20),
                            height: s.h(30),
                          ),
                          SizedBox(
                            width: s.w(2),
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
                      'Don\'t have an account ,',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, SignUpScreen.routeName),
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
        ),
      ),
    );
  }
}
