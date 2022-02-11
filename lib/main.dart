import 'package:coffee_creator/providers/auth_provider/auth_provider.dart';
import 'package:coffee_creator/views/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'data/data_providers/dio_helper.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xffb59c88),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return ChangeNotifierProvider.value(
      value: AuthProvider(),
      child: MaterialApp(
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
      ),
    );
  }
}
