import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroPageScreen extends StatelessWidget {
  const IntroPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  padding: const EdgeInsets.fromLTRB(30, 37, 39, 0),
                  child: Container(
                    width: 81,
                    height: 81,
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
                      padding: const EdgeInsets.fromLTRB(0, 44, 119, 0),
                      child: Text('Hi, Amr!',
                          style: Theme.of(context)
                              .textTheme
                              .headline1), //TODO change the name
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 98, 0),
                      child: Text(' Let\'s Drink',
                          style: Theme.of(context)
                              .textTheme
                              .headline2), //TODO change the name
                    ),
                  ],
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 99, 0, 0),
                  child: Container(
                    width: 145,
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(23),
                      ),
                      color: const Color(0xffe6d6c7),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(33, 55, 13, 54),
                      child: Text("Make your coffee",
                          style: const TextStyle(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 28.0),
                          textAlign: TextAlign.left),
                    ),
                  ),
                ),
                SizedBox(
                  width: 41,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(41, 0, 28.4, 0),
                      child: SvgPicture.asset(
                        'assets/images/cup.svg',
                        height: 163.2,
                        width: 145.6,
                      ),
                    ),
                    Container(
                      width: 146,
                      height: 156,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(23)),
                          border: Border.all(
                              color: const Color(0xffe6d6c7), width: 5)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 60, 20, 50),
                        child: Text('Menu',
                            style: const TextStyle(
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontSize: 28.0),
                            textAlign: TextAlign.left),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 33,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 250,
                  height: 285,
                  child: Stack(
                    children: [
                      PositionedDirectional(
                        start: 85,
                        top: 0,
                        child: SvgPicture.asset(
                          'assets/images/boy.svg',
                          height: 200,
                          width: 100,
                        ),
                      ),
                      PositionedDirectional(
                        start: 30,
                        top: 105,
                        child: Container(
                          width: 146,
                          height: 159,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(23)),
                              border: Border.all(
                                  color: const Color(0xffe6d6c7), width: 5)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(33, 43, 29, 42),
                            child: Text('Save Drinks',
                                style: const TextStyle(
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 28.0),
                                textAlign: TextAlign.left),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 28, 122),
                  child: Container(
                    width: 145,
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(23),
                      ),
                      color: const Color(0xffe6d6c7),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(33, 55, 13, 54),
                      child: Text("Make your coffee",
                          style: const TextStyle(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 28.0),
                          textAlign: TextAlign.left),
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
