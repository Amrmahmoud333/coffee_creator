import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoffeeDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height(double n) {
      return MediaQuery.of(context).size.height * (n / 851);
    }

    double width(double n) {
      return MediaQuery.of(context).size.width * (n / 393);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height(36),
            ),
            Row(
              children: [
                SizedBox(
                  width: width(51),
                ),
                Icon(
                  Icons.menu,
                  size: height(46),
                ),
                SizedBox(
                  width: width(35),
                ),
                AutoSizeText(
                  'Your coffee',
                  style: const TextStyle(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      fontSize: 30.0),
                ),
              ],
            ),
            SizedBox(
              height: height(32),
            ),
            Container(
              width: width(262),
              height: height(208),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/coffecard1.jpg'),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.all(
                  Radius.circular(48),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: width(261),
                ),
                TextButton(
                  child: AutoSizeText(
                    'edit',
                    style: const TextStyle(
                        color: const Color(0xffb59c88),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 24.0),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: height(17),
            ),
            Container(
              width: width(256),
              child: Text(
                  "Hot Coffee drink using espresso without sugar, Hazelnut flavor.",
                  style: const TextStyle(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      fontSize: 25.0),
                  textAlign: TextAlign.left),
            ),
            SizedBox(
              height: height(27),
            ),
            Row(
              children: [
                SizedBox(
                  width: width(226),
                ),
                Container(
                  width: width(55),
                  height: height(55),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    border: Border.all(
                      color: const Color(0xff707070),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image(
                      image: AssetImage('assets/images/star2.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: width(21),
                ),
                Container(
                  width: width(55),
                  height: height(55),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    border: Border.all(
                      color: const Color(0xff707070),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image(
                      image: AssetImage('assets/images/share.png'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height(21),
            ),
            Container(
              width: width(180),
              height: height(56),
              child: ElevatedButton(
                onPressed: () {},
                child: AutoSizeText(
                  "Confirm ",
                  style: const TextStyle(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      fontSize: 24.0),
                ),
              ),
            ),
            SizedBox(
              height: height(15),
            ),
          ],
        ),
      ),
    );
  }
}
