import 'package:coffee_creator/views/home/home_screen.dart';
import 'package:coffee_creator/views/login/login_screen.dart';
import 'package:coffee_creator/views/sign_up/screens/sign_up_screen.dart';
import 'package:coffee_creator/views/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case SignUpScreen.routeName:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
    }
  }
}
