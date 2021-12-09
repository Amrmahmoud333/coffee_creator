import 'package:coffee_creator/modules/Inro/intro_page_screen.dart';
import 'package:coffee_creator/modules/login/screens/login_screen.dart';
import 'package:coffee_creator/modules/make_coffee/make_your_coffee_screen.dart';
import 'package:coffee_creator/modules/welcome/screens/welcome_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xffb59c88),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return ScreenUtilInit(
      designSize: Size(393, 851),
      builder: () => MaterialApp(
        title: 'Coffee Creator',
        theme: ThemeData(
          primaryColor: Color(0xffb59c88),
          accentColor: Color(0xffe6d6c7),
          scaffoldBackgroundColor: Color(0xffb59c88),
          fontFamily: 'Roboto',
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 28, color: Colors.black),
            headline2: TextStyle(fontSize: 22, color: Colors.black),
            headline3: TextStyle(fontSize: 16, color: Colors.black),
            headline4: TextStyle(fontSize: 15, color: Colors.black),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Color(0xffe6d6c7),
              onPrimary: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        builder: (context, widget) {
          return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        home: WelcomeScreen(),
      ),
    );
  }
}
