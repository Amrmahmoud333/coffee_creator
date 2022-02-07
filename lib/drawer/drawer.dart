import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width(double n) {
      return MediaQuery.of(context).size.width * (n / 393);
    }

    double height(double n) {
      return MediaQuery.of(context).size.height * (n / 851);
    }

    return Container(
      width: width(280),
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color(0xffe6d6c7),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.blue,
                    child: Text(
                      "T",
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),
                  SizedBox(
                    width: width(39),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        "Tony Marc ",
                        style: const TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            fontStyle: FontStyle.normal,
                            fontSize: 22.0),
                      ),
                      AutoSizeText("Tony12@example.com",
                          style: const TextStyle(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 14.0),
                          textAlign: TextAlign.left),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height(64),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                size: 35,
              ),
              title: AutoSizeText(
                'Profile',
                style: TextStyle(
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto",
                  fontSize: 23,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.menu_book_outlined,
                size: 35,
              ),
              title: AutoSizeText(
                'Menu',
                style: TextStyle(
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto",
                  fontSize: 23,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.star_outlined,
                size: 35,
              ),
              title: AutoSizeText(
                'Saved',
                style: TextStyle(
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto",
                  fontSize: 23,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/Heart.svg',
                  width: width(30),
                  height: height(30),
                  color: const Color(0xff707070)),
              title: AutoSizeText(
                'Favorite',
                style: TextStyle(
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto",
                  fontSize: 23,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_bag,
                size: 35,
              ),
              title: AutoSizeText(
                'Cart',
                style: TextStyle(
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto",
                  fontSize: 23,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.language,
                size: 35,
              ),
              title: AutoSizeText(
                'Language',
                style: TextStyle(
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto",
                  fontSize: 23,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.notifications_active,
                size: 35,
              ),
              title: AutoSizeText(
                'Notifications',
                style: TextStyle(
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto",
                  fontSize: 23,
                ),
              ),
              // TODO add togglle button
              onTap: () {},
            ),
            SizedBox(
              height: height(117),
            ),
            Padding(
              padding: EdgeInsets.only(left: width(50)),
              child: ListTile(
                leading: Icon(
                  Icons.logout_outlined,
                  size: 35,
                ),
                title: AutoSizeText(
                  'Log out',
                  style: TextStyle(
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto",
                    fontSize: 23,
                  ),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
