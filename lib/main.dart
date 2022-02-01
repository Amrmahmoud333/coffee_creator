import 'package:coffee_creator/modules/intro/intro_page_screen.dart';
import 'package:coffee_creator/modules/coffee_details/coffee_details_screen.dart';
import 'package:coffee_creator/modules/favorite_drinks/widgets/favorite_card.dart';
import 'package:coffee_creator/modules/login/screens/login_screen.dart';
import 'package:coffee_creator/modules/make_coffee/screens/make_your_coffee_screen.dart';
import 'package:coffee_creator/modules/saved_drinks/screens/saved_drinks.dart';
import 'package:coffee_creator/modules/welcome/screens/welcome_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'modules/favorite_drinks/screens/favorite_drinks_screen.dart';
import 'modules/menu/screens/menu_screen.dart';
import 'modules/menu_card/menu_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xffb59c88),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
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
        appBarTheme: AppBarTheme(
            backgroundColor: Color(0xffb59c88), foregroundColor: Colors.black),
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
      home: SavedDrinks(),

      //  , SavedDrinks
    );
  }
}
