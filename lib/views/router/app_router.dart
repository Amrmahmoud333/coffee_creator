import 'package:coffee_creator/views/favorite_drinks/screens/favorite_drinks_screen.dart';
import 'package:coffee_creator/views/home/home_screen.dart';
import 'package:coffee_creator/views/login/login_screen.dart';
import 'package:coffee_creator/views/make_coffee/screens/make_your_coffee_screen.dart';
import 'package:coffee_creator/views/menu/screens/menu_screen.dart';
import 'package:coffee_creator/views/saved_drinks/screens/saved_drinks.dart';
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
      case MakeYourCoffeScreen.routeName:
        return MaterialPageRoute(builder: (_) => MakeYourCoffeScreen());
      case MenuScreen.routeName:
        return MaterialPageRoute(builder: (_) => MenuScreen());
      case SavedDrinks.routeName:
        return MaterialPageRoute(builder: (_) => SavedDrinks());
      case FavoriteDrinksScreen.routeName:
        return MaterialPageRoute(builder: (_) => FavoriteDrinksScreen());
      default:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
    }
  }
}
