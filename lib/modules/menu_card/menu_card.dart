import 'package:auto_size_text/auto_size_text.dart';
import 'package:coffee_creator/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height(double n) {
      return MediaQuery.of(context).size.height * (n / 851);
    }

    double width(double n) {
      return MediaQuery.of(context).size.width * (n / 393);
    }

    final _scaffoldKey = new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: AutoSizeText(
          'Your coffee',
          style: const TextStyle(
              color: const Color(0xff000000),
              fontWeight: FontWeight.w400,
              fontFamily: "Roboto",
              fontStyle: FontStyle.normal,
              fontSize: 30.0),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: width(40),
          ),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
      ),
      drawer: DrawerScreen(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height(32),
              ),
              Container(
                width: width(205),
                height: height(283),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/coffecard4.jpg'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.all(
                    Radius.circular(48),
                  ),
                ),
              ),
              SizedBox(
                height: height(35),
              ),
              Row(
                children: [
                  SizedBox(
                    width: width(47),
                  ),
                  Container(
                    width: width(240),
                    child: AutoSizeText(
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
                    width: width(10),
                  ),
                  Image(
                    image: AssetImage('assets/images/heart1.png'),
                    width: width(50),
                    height: height(50),
                  ),
                ],
              ),
              SizedBox(
                height: height(29),
              ),
              Row(
                children: [
                  SizedBox(
                    width: width(47),
                  ),
                  Container(
                    width: width(58),
                    height: height(58),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: AutoSizeText(
                        'S',
                        style: const TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            fontStyle: FontStyle.normal,
                            fontSize: 30.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width(20),
                  ),
                  Container(
                    width: width(58),
                    height: height(58),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: AutoSizeText(
                        'M',
                        style: const TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            fontStyle: FontStyle.normal,
                            fontSize: 30.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width(20),
                  ),
                  Container(
                    width: width(58),
                    height: height(58),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: AutoSizeText(
                        'L',
                        style: const TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            fontStyle: FontStyle.normal,
                            fontSize: 30.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width(15),
                  ),
                  MaterialButton(
                    //TODO
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.black,
                    child: AutoSizeText(
                      '+',
                      style: const TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "SegoeUI",
                          fontStyle: FontStyle.normal,
                          fontSize: 28.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: width(16),
                      vertical: height(16),
                    ),
                    shape: CircleBorder(),
                  ),
                ],
              ),
              SizedBox(
                height: height(53),
              ),
              Container(
                width: width(180),
                height: height(56),
                child: ElevatedButton(
                  onPressed: () {},
                  child: AutoSizeText(
                    "Done",
                    style: const TextStyle(
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 24.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: height(15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
