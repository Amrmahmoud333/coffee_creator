import 'package:coffee_creator/views/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final AppRouter appRouter = AppRouter();
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
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Color(0xffe6d6c7)),
        scaffoldBackgroundColor: Color(0xffb59c88),
        fontFamily: 'Roboto',
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffb59c88),
          foregroundColor: Colors.black,
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
      onGenerateRoute: appRouter.onGenerateRoute,
      //  , SavedDrinks
    );
  }
}
