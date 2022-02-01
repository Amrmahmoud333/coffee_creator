import 'package:auto_size_text/auto_size_text.dart';
import 'package:coffee_creator/drawer/drawer.dart';
import 'package:coffee_creator/modules/make_coffee/widget/container_choose.dart';
import 'package:coffee_creator/modules/make_coffee/widget/container_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MakeYourCoffeScreen extends StatefulWidget {
  const MakeYourCoffeScreen({Key? key}) : super(key: key);

  @override
  State<MakeYourCoffeScreen> createState() => _MakeYourCoffeScreenState();
}

class _MakeYourCoffeScreenState extends State<MakeYourCoffeScreen> {
  int _value = 1;
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
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
            elevation: 0,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: Icon(Icons.menu, size: 40.w),
              onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            ),
            title: Center(
              child: AutoSizeText("Make Your coffee",
                  style: const TextStyle(
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      fontSize: 25),
                  textAlign: TextAlign.left),
            ),
          ),
        ),
        drawer: DrawerScreen(),
        backgroundColor: const Color(0xffffffff),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 34.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 84.w, right: 64.w),
                child: SvgPicture.asset(
                  'assets/images/cup.svg',
                  width: 245.w,
                  height: 147.h,
                ),
              ),
              SizedBox(
                height: 31.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 33.w,
                  ),
                  ContainerText('Cup Size', 113.w, 33.h, 25.sp),
                  SizedBox(
                    width: 5.w,
                  ),
                  ContainerChoose('S', 63.w, 36.h, 25.sp, true),
                  SizedBox(
                    width: 14.w,
                  ),
                  ContainerChoose('M', 63.w, 36.h, 25.sp, false),
                  SizedBox(
                    width: 14.w,
                  ),
                  ContainerChoose('L', 63.w, 36.h, 25.sp, true),
                  SizedBox(
                    width: 25.w,
                  ),
                ],
              ),
              SizedBox(
                height: 46.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 33.w,
                  ),
                  ContainerText('Coffee', 122.w, 33.h, 25.sp),
                  ContainerChoose('Hot', 95.w, 36.h, 18.sp, true),
                  SizedBox(
                    width: 27.w,
                  ),
                  ContainerChoose('Cold', 95.w, 36.h, 18.sp, false),
                ],
              ),
              SizedBox(
                height: 46.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 33.w,
                  ),
                  ContainerText('Orgin', 126.w, 33.h, 25.sp),
                  SizedBox(
                    width: 52.w,
                  ),
                  Container(
                    width: 135.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(11)),
                        border: Border.all(
                            color: const Color(0xffe6d6c7), width: 3),
                        color: const Color(0xffffffff)),
                    child: DropdownButton(
                      value: _value,
                      icon: Icon(Icons.arrow_drop_down),
                      underline: SizedBox(),
                      items: [
                        DropdownMenuItem(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(19.w, 0, 23.w, 0),
                              child: Text(
                                'Brazilian',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontSize: 14.sp),
                              ),
                            ),
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(19.w, 0, 23.w, 0),
                              child: Text(
                                'Arabica',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontSize: 14.sp),
                              ),
                            ),
                          ),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(19.w, 0, 23.w, 0),
                              child: Text(
                                'Robusta',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontSize: 14.sp),
                              ),
                            ),
                          ),
                          value: 3,
                        ),
                        DropdownMenuItem(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(19.w, 0, 23.w, 0),
                              child: Text(
                                'Liberica',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontSize: 14.sp),
                              ),
                            ),
                          ),
                          value: 4,
                        ),
                        DropdownMenuItem(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(19.w, 0, 23.w, 0),
                              child: Text(
                                'Excelsa',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontSize: 14.sp),
                              ),
                            ),
                          ),
                          value: 5,
                        ),
                      ],
                      onChanged: (dynamic v) {
                        setState(() {
                          _value = v;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 46.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 33.w,
                  ),
                  ContainerText('Roast', 100.w, 33.h, 25.sp),
                  ContainerChoose('Light', 73.w, 36.h, 18.sp, true),
                  SizedBox(
                    width: 8.w,
                  ),
                  ContainerChoose('Mediam', 73.w, 36.h, 18.sp, false),
                  SizedBox(
                    width: 8.w,
                  ),
                  ContainerChoose('Dark', 73.w, 36.h, 18.sp, false),
                  SizedBox(
                    width: 25.w,
                  ),
                ],
              ),
              SizedBox(
                height: 46.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 33.w,
                  ),
                  ContainerText('Sugar Type', 131.w, 33.h, 25.sp),
                  SizedBox(
                    width: 15.w,
                  ),
                  ContainerChoose('Normal', 90.w, 36.h, 16.sp, true),
                  SizedBox(
                    width: 9.w,
                  ),
                  ContainerChoose('Diet', 90.w, 36.h, 16.sp, false),
                  SizedBox(
                    width: 25.w,
                  ),
                ],
              ),
              SizedBox(
                height: 46.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 33.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 27.w),
                    child: Text(
                      'Sugar amount',
                      style: TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontSize: 25.sp),
                    ),
                  ),
                  SizedBox(
                    width: 27.w,
                  ),
                  Container(
                    width: 100.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(11)),
                        border: Border.all(
                            color: const Color(0xffe6d6c7), width: 3),
                        color: const Color(0xffffffff)),
                    child: DropdownButton(
                      value: _value,
                      icon: Icon(Icons.arrow_drop_down),
                      underline: SizedBox(),
                      items: [
                        DropdownMenuItem(
                          child: Center(
                              child: Padding(
                            padding: EdgeInsets.fromLTRB(9.5.w, 0, 7.12.w, 0),
                            child: Text(
                              '0Sp',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                  fontSize: 15.sp),
                            ),
                          )),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Center(
                              child: Padding(
                            padding: EdgeInsets.fromLTRB(21.w, 0, 7.12.w, 0),
                            child: Text(
                              '1Sp',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                  fontSize: 15.sp),
                            ),
                          )),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Center(
                              child: Padding(
                            padding: EdgeInsets.fromLTRB(9.5.w, 0, 7.12.w, 0),
                            child: Text(
                              '2Sp',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                  fontSize: 15.sp),
                            ),
                          )),
                          value: 3,
                        ),
                        DropdownMenuItem(
                          child: Center(
                              child: Padding(
                            padding: EdgeInsets.fromLTRB(9.5.w, 0, 7.12.w, 0),
                            child: Text(
                              '3Sp',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                  fontSize: 15.sp),
                            ),
                          )),
                          value: 4,
                        ),
                        DropdownMenuItem(
                          child: Center(
                              child: Padding(
                            padding: EdgeInsets.fromLTRB(9.5.w, 0, 7.12.w, 0),
                            child: Text(
                              '4Sp',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                  fontSize: 14.sp),
                            ),
                          )),
                          value: 5,
                        ),
                      ],
                      onChanged: (dynamic v) {
                        setState(() {
                          _value = v;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 46.h,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 33.w,
                      ),
                      ContainerText('Flavor', 86.w, 33.h, 25.sp),
                      ContainerChoose('Caramel', 95.w, 36.h, 18.sp, true),
                      SizedBox(
                        width: 27.w,
                      ),
                      ContainerChoose('Vanilia', 95.w, 36.h, 18.sp, false),
                    ],
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      ContainerChoose(
                          'Pumpkin Spice', 110.w, 36.h, 16.sp, false),
                      SizedBox(
                        width: 27.w,
                      ),
                      ContainerChoose('Mocha', 95.w, 36.h, 18.sp, false),
                      SizedBox(
                        width: 27.w,
                      ),
                      ContainerChoose('Hazelnut', 95.w, 36.h, 18.sp, false),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 46.h,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 33.w,
                      ),
                      ContainerText('Extra', 86.w, 33.h, 25.sp),
                      ContainerChoose(
                          'Whipping cream', 115.w, 36.h, 16.sp, true),
                      SizedBox(
                        width: 27.w,
                      ),
                      ContainerChoose(
                          'Caramel sauce', 115.w, 36.h, 16.sp, false),
                    ],
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 120.w,
                      ),
                      ContainerChoose(
                          'Chocolate sauce', 115.w, 36.h, 16.sp, false),
                      SizedBox(
                        width: 27.w,
                      ),
                      ContainerChoose('Nuts', 115.w, 36.h, 18.sp, false),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 46.h,
              ),
              Container(
                height: 56.h,
                width: 180.w,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Done',
                      style: const TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 25.0),
                      textAlign: TextAlign.left),
                ),
              ),
              SizedBox(
                height: 46.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
