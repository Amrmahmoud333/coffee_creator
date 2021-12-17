import 'package:coffee_creator/modules/favorite_drinks/widgets/favorite_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteDrinksScreen extends StatelessWidget {
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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(77.h),
          child: AppBar(
            elevation: 15,
            backgroundColor: const Color(0xffb69d89),
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 43.w,
                  height: 46.h,
                  child: IconButton(
                    icon: Icon(
                      Icons.menu,
                      size: 50.sp,
                    ),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 40.h, 0, 16.h),
                  child: Text("Favorite Drinks",
                      style: const TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 27),
                      textAlign: TextAlign.left),
                ),
                SizedBox(
                  width: 43.w,
                  height: 46.h,
                  child: IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 50.sp,
                    ),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
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
