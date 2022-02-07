import 'package:auto_size_text/auto_size_text.dart';
import 'package:coffee_creator/drawer/drawer.dart';
import 'package:coffee_creator/modules/favorite_drinks/widgets/favorite_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteDrinksScreen extends StatelessWidget {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double height(double n) {
      return MediaQuery.of(context).size.height * (n / 851);
    }

    double width(double n) {
      return MediaQuery.of(context).size.width * (n / 393);
    }

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
            elevation: 15,
            backgroundColor: const Color(0xffb69d89),
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: Icon(Icons.menu, size: 40.w),
              onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: width(27)),
                child: IconButton(
                  icon: Icon(Icons.search, size: 40.w),
                  onPressed: () {},
                ),
              ),
            ],
            title: Center(
              child: AutoSizeText("Favorite Drinks",
                  style: const TextStyle(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      fontSize: 27),
                  textAlign: TextAlign.left),
            ),
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
                FavoriteCard('assets/images/coffecard1.jpg'),
                SizedBox(
                  width: 17.w,
                ),
                FavoriteCard('assets/images/coffecard2.jpg'),
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
                FavoriteCard('assets/images/coffecard3.jpg'),
                SizedBox(
                  width: 17.w,
                ),
                FavoriteCard('assets/images/coffecard4.jpg'),
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
