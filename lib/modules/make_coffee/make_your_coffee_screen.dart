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
        backgroundColor: const Color(0xffffffff),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34.w, vertical: 29.h),
                child: Row(
                  children: [
                    Container(
                      height: 46.h,
                      width: 43.w,
                      child: Icon(
                        Icons.menu,
                        size: 40.sp,
                      ),
                    ),
                    SizedBox(
                      width: 31.w,
                    ),
                    Text(
                      'Make Your coffee',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 25.sp,
                      ),
                    ),
                  ],
                ),
              ),
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
                  Container(
                    width: 113.w,
                    height: 33.h,
                    child: Text(
                      'Cup Size',
                      style: TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 25.sp),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    width: 63.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      border:
                          Border.all(color: const Color(0xffe6d6c7), width: 2),
                      color: Color(0xffe6d6c7), //TODO change with white
                    ),
                    child: Center(
                      child: Text(
                        'S',
                        style: TextStyle(
                          fontSize: 25.sp,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  Container(
                    width: 63.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      border:
                          Border.all(color: const Color(0xffe6d6c7), width: 2),
                      color: const Color(0xffffffff),
                    ),
                    child: Center(
                      child: Text(
                        'M',
                        style: TextStyle(
                          fontSize: 25.sp,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  Container(
                    width: 63.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      border:
                          Border.all(color: const Color(0xffe6d6c7), width: 2),
                      color: const Color(0xffffffff),
                    ),
                    child: Center(
                      child: Text(
                        'L',
                        style: TextStyle(
                          fontSize: 25.sp,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
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
                  Container(
                    width: 122.w,
                    height: 33.h,
                    child: Text(
                      'Coffee',
                      style: TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 25.sp),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    width: 95.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      border:
                          Border.all(color: const Color(0xffe6d6c7), width: 2),
                      color: Color(0xffe6d6c7), //TODO change with white
                    ),
                    child: Center(
                      child: Text(
                        'Hot',
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 27.w,
                  ),
                  Container(
                    width: 95.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      border:
                          Border.all(color: const Color(0xffe6d6c7), width: 2),
                      color: const Color(0xffffffff),
                    ),
                    child: Center(
                      child: Text(
                        'Cold',
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                        ),
                        textAlign: TextAlign.center,
                      ),
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
                  Container(
                    height: 33.h,
                    width: 126.w,
                    child: Text(
                      'Orgin',
                      style: TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontSize: 25.sp),
                      textAlign: TextAlign.left,
                    ),
                  ),
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
                          )),
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
                          )),
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
                          )),
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
                          )),
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
              Row(
                children: [
                  SizedBox(
                    width: 33.w,
                  ),
                  Container(
                    width: 100.w,
                    height: 33.h,
                    child: Text(
                      'Roast',
                      style: TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 25.sp),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    width: 73.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      border:
                          Border.all(color: const Color(0xffe6d6c7), width: 2),
                      color: Color(0xffe6d6c7), //TODO change with white
                    ),
                    child: Center(
                      child: Text(
                        'Light',
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Container(
                    width: 73.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      border:
                          Border.all(color: const Color(0xffe6d6c7), width: 2),
                      color: const Color(0xffffffff),
                    ),
                    child: Center(
                      child: Text(
                        'Mediam',
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Container(
                    width: 73.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      border:
                          Border.all(color: const Color(0xffe6d6c7), width: 2),
                      color: const Color(0xffffffff),
                    ),
                    child: Center(
                      child: Text(
                        'Dark',
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
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
                  Container(
                    width: 131.w,
                    height: 33.h,
                    child: Text(
                      'Sugar Type',
                      style: TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 25.sp),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    width: 90.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      border:
                          Border.all(color: const Color(0xffe6d6c7), width: 2),
                      color: Color(0xffe6d6c7), //TODO change with white
                    ),
                    child: Center(
                      child: Text(
                        'Normal',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 9.w,
                  ),
                  Container(
                    width: 90.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      border:
                          Border.all(color: const Color(0xffe6d6c7), width: 2),
                      color: const Color(0xffffffff),
                    ),
                    child: Center(
                      child: Text(
                        'Diet',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
