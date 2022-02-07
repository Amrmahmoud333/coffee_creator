import 'package:auto_size_text/auto_size_text.dart';
import 'package:coffee_creator/views/drawer/drawer.dart';
import 'package:coffee_creator/views/saved_drinks/widget/drink_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedDrinks extends StatelessWidget {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0x29291f1f),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return ScreenUtilInit(
      designSize: Size(393, 851),
      builder: () => Scaffold(
        key: _scaffoldKey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(77.h),
          child: AppBar(
            title: AutoSizeText(
              "Saved Drinks",
              style: const TextStyle(
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto",
                  fontStyle: FontStyle.normal,
                  fontSize: 27.0),
              textAlign: TextAlign.left,
            ),
            leading: IconButton(
              icon: Icon(Icons.menu, size: 40.w),
              onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, size: 40.w),
              ),
            ],
          ),
        ),
        drawer: DrawerScreen(),
        body: Column(
          children: [
            SizedBox(
              height: 84.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 47.w,
                ),
                DrinkCard('assets/images/coffecard1.jpg'),
                SizedBox(
                  width: 17.w,
                ),
                DrinkCard('assets/images/coffecard2.jpg'),
              ],
            ),
            SizedBox(
              height: 45.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 47.w,
                ),
                DrinkCard('assets/images/coffecard3.jpg'),
                SizedBox(
                  width: 17.w,
                ),
                DrinkCard('assets/images/coffecard4.jpg'),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: Icon(
            Icons.add,
            color: const Color(0xffb69d89),
          ),
        ),
      ),
    );
  }
}
