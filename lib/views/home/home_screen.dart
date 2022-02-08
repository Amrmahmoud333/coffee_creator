import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      width * 0.07, height * 0.04, width * 0.09, 0),
                  child: Container(
                    width: width * 0.19,
                    height: height * 0.096,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          0, height * 0.05, width * 0.30, 0),
                      child: SizedBox(
                        width: width * 0.31,
                        height: height * 0.04,
                        child: AutoSizeText('Hi, Amr!',
                            style:
                                TextStyle(fontFamily: 'Roboto', fontSize: 28)),
                      ), //TODO change the name
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, width * 0.25, 0),
                      child: SizedBox(
                        width: width * 0.32,
                        height: height * 0.03,
                        child: AutoSizeText(' Let\'s Drink',
                            style:
                                TextStyle(fontFamily: 'Roboto', fontSize: 21)),
                      ), //TODO change the name
                    ),
                  ],
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(width * 0.07, height * 0.12, 0, 0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: width * 0.37,
                      height: height * 0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(23),
                        ),
                        color: const Color(0xffe6d6c7),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 33, vertical: 55),
                        //(width * 0.09, 55, 13, 54),

                        child: SizedBox(
                          width: width * 0.25,
                          height: height * 0.13,
                          child: AutoSizeText(
                            "Make your coffee",
                            style: TextStyle(fontSize: 28),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.05,
                ),
                Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.fromLTRB(width * 0.05, 0, width * 0.05, 0),
                      child: SvgPicture.asset(
                        'assets/images/cup.svg',
                        height: height * 0.19,
                        width: width * 0.37,
                      ),
                    ),
                    Container(
                      width: width * 0.37,
                      height: height * 0.18,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(23)),
                          border: Border.all(
                              color: const Color(0xffe6d6c7), width: 5)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.09, vertical: height * 0.06),
                        child: SizedBox(
                          width: width * 0.25,
                          height: height * 0.13,
                          child: AutoSizeText(
                            'Menu',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: width * 0.50,
                  height: height * 0.34,
                  child: Stack(
                    children: [
                      PositionedDirectional(
                        start: width * 0.19,
                        top: 0,
                        child: SvgPicture.asset(
                          'assets/images/boy.svg',
                          height: height * 0.23,
                          width: width * 0.25,
                        ),
                      ),
                      PositionedDirectional(
                        start: width * 0.076,
                        top: height * 0.121,
                        child: Container(
                          width: width * 0.30,
                          height: height * 0.18,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(23)),
                              border: Border.all(
                                  color: const Color(0xffe6d6c7), width: 5)),
                          child: Padding(
                            //TODO
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 0.05,
                                vertical: height * 0.05),
                            child: SizedBox(
                              width: width * 0.21,
                              height: height * 0.8,
                              child: AutoSizeText(
                                'Save Drinks',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
                  child: Container(
                    width: width * 0.35,
                    height: height * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(23),
                      ),
                      color: const Color(0xffe6d6c7),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.04, vertical: height * 0.08),
                      child: SizedBox(
                        width: width * 0.31,
                        height: height * 0.08,
                        child: AutoSizeText(
                          "Favourite Drinks",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
