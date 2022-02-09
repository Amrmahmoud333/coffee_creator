import 'package:auto_size_text/auto_size_text.dart';
import 'package:coffee_creator/views/drawer/drawer.dart';
import 'package:coffee_creator/views/make_coffee/widget/container_choose.dart';
import 'package:coffee_creator/views/make_coffee/widget/container_text.dart';
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
  int _valueOrgin = 1;
  int _valueSugar = 1;
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  // manage Cup Size
  String _cupSize = '';
  bool _isCupSizeM = false;
  bool _isCupSizeS = false;
  bool _isCupSizeL = false;
  // manage coffee
  String _Coffee = '';
  bool _isCoffeCold = false;
  bool _isCoffeHot = false;
  // manage roast
  String _Roast = '';
  bool _isRoastLight = false;
  bool _isRoastMediam = false;
  bool _isRoastDark = false;
  // manage sugar type
  String _sugarType = '';
  bool _isSugarTypeNormal = false;
  bool _isSugarTypeDiet = false;
  // manage flavor
  String _flavor = '';
  bool _isFlavorCaramel = false;
  bool _isFlavorVanilia = false;
  bool _isFlavorPumpkinSpice = false;
  bool _isFlavorMocha = false;
  bool _isFlavorHazelnut = false;
  // manage extra
  String _extra = '';
  bool _isExtraWhippingCream = false;
  bool _isExtraCaramelSauce = false;
  bool _isExtraChocolateSauce = false;
  bool _isExtraNuts = false;
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
                  InkWell(
                      onTap: () {
                        setState(() {
                          _cupSize = 'S';
                          _isCupSizeS = !_isCupSizeS;
                          _isCupSizeM = false;
                          _isCupSizeL = false;
                        });
                      },
                      child:
                          ContainerChoose('S', 63.w, 36.h, 25.sp, _isCupSizeS)),
                  SizedBox(
                    width: 14.w,
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _cupSize = 'M';
                          _isCupSizeM = !_isCupSizeM;
                          _isCupSizeL = false;
                          _isCupSizeS = false;
                        });
                      },
                      child:
                          ContainerChoose('M', 63.w, 36.h, 25.sp, _isCupSizeM)),
                  SizedBox(
                    width: 14.w,
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _cupSize = 'L';
                          _isCupSizeL = !_isCupSizeL;
                          _isCupSizeM = false;
                          _isCupSizeS = false;
                        });
                      },
                      child:
                          ContainerChoose('L', 63.w, 36.h, 25.sp, _isCupSizeL)),
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
                  InkWell(
                      onTap: () {
                        setState(() {
                          _Coffee = 'Hot';
                          _isCoffeHot = !_isCoffeHot;
                          _isCoffeCold = false;
                        });
                      },
                      child: ContainerChoose(
                          'Hot', 95.w, 36.h, 18.sp, _isCoffeHot)),
                  SizedBox(
                    width: 27.w,
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _Coffee = 'Cold';
                          _isCoffeCold = !_isCoffeCold;
                          _isCoffeHot = false;
                        });
                      },
                      child: ContainerChoose(
                          'Cold', 95.w, 36.h, 18.sp, _isCoffeCold)),
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
                      value: _valueOrgin,
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
                          _valueOrgin = v;
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
                  InkWell(
                      onTap: () {
                        setState(() {
                          _Roast = 'Light';
                          _isRoastLight = !_isRoastLight;
                          _isRoastDark = false;
                          _isRoastMediam = false;
                        });
                      },
                      child: ContainerChoose(
                          'Light', 73.w, 36.h, 18.sp, _isRoastLight)),
                  SizedBox(
                    width: 8.w,
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _Roast = 'Mediam';
                          _isRoastMediam = !_isRoastMediam;
                          _isRoastLight = false;
                          _isRoastDark = false;
                        });
                      },
                      child: ContainerChoose(
                          'Mediam', 73.w, 36.h, 18.sp, _isRoastMediam)),
                  SizedBox(
                    width: 8.w,
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _Roast = 'Dark';
                          _isRoastDark = !_isRoastDark;
                          _isRoastLight = false;
                          _isRoastMediam = false;
                        });
                      },
                      child: ContainerChoose(
                          'Dark', 73.w, 36.h, 18.sp, _isRoastDark)),
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
                  InkWell(
                      onTap: () {
                        setState(() {
                          _sugarType = 'Normal';
                          _isSugarTypeNormal = !_isSugarTypeNormal;
                          _isSugarTypeDiet = false;
                        });
                      },
                      child: ContainerChoose(
                          'Normal', 90.w, 36.h, 16.sp, _isSugarTypeNormal)),
                  SizedBox(
                    width: 9.w,
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _sugarType = 'Diet';
                          _isSugarTypeDiet = !_isSugarTypeDiet;
                          _isSugarTypeNormal = false;
                        });
                      },
                      child: ContainerChoose(
                          'Diet', 90.w, 36.h, 16.sp, _isSugarTypeDiet)),
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
                      value: _valueSugar,
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
                          _valueSugar = v;
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
                      InkWell(
                          onTap: () {
                            setState(() {
                              _flavor = 'Caramel';
                              _isFlavorCaramel = !_isFlavorCaramel;
                              _isFlavorHazelnut = false;
                              _isFlavorMocha = false;
                              _isFlavorPumpkinSpice = false;
                              _isFlavorVanilia = false;
                            });
                          },
                          child: ContainerChoose(
                              'Caramel', 95.w, 36.h, 18.sp, _isFlavorCaramel)),
                      SizedBox(
                        width: 27.w,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _flavor = 'Vanilia';
                            _isFlavorVanilia = !_isFlavorVanilia;
                            _isFlavorHazelnut = false;
                            _isFlavorMocha = false;
                            _isFlavorPumpkinSpice = false;
                            _isFlavorCaramel = false;
                          });
                        },
                        child: ContainerChoose(
                            'Vanilia', 95.w, 36.h, 18.sp, _isFlavorVanilia),
                      ),
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
                      InkWell(
                        onTap: () {
                          setState(() {
                            _flavor = 'Pumpkin Spice';
                            _isFlavorPumpkinSpice = !_isFlavorPumpkinSpice;
                            _isFlavorHazelnut = false;
                            _isFlavorMocha = false;
                            _isFlavorVanilia = false;
                            _isFlavorCaramel = false;
                          });
                        },
                        child: ContainerChoose('Pumpkin Spice', 110.w, 36.h,
                            16.sp, _isFlavorPumpkinSpice),
                      ),
                      SizedBox(
                        width: 27.w,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _flavor = 'Mocha';
                            _isFlavorMocha = !_isFlavorMocha;
                            _isFlavorHazelnut = false;
                            _isFlavorPumpkinSpice = false;
                            _isFlavorVanilia = false;
                            _isFlavorCaramel = false;
                          });
                        },
                        child: ContainerChoose(
                            'Mocha', 95.w, 36.h, 18.sp, _isFlavorMocha),
                      ),
                      SizedBox(
                        width: 27.w,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _flavor = 'Hazelnut';
                            _isFlavorHazelnut = !_isFlavorHazelnut;
                            _isFlavorMocha = false;
                            _isFlavorPumpkinSpice = false;
                            _isFlavorVanilia = false;
                            _isFlavorCaramel = false;
                          });
                        },
                        child: ContainerChoose(
                            'Hazelnut', 95.w, 36.h, 18.sp, _isFlavorHazelnut),
                      ),
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
                      InkWell(
                        onTap: () {
                          setState(() {
                            _extra = 'Whipping cream';
                            _isExtraWhippingCream = !_isExtraWhippingCream;
                            _isExtraCaramelSauce = false;
                            _isExtraChocolateSauce = false;
                            _isExtraNuts = false;
                          });
                        },
                        child: ContainerChoose('Whipping cream', 115.w, 36.h,
                            16.sp, _isExtraWhippingCream),
                      ),
                      SizedBox(
                        width: 27.w,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _extra = 'Caramel sauce';
                            _isExtraCaramelSauce = !_isExtraCaramelSauce;
                            _isExtraWhippingCream = false;
                            _isExtraChocolateSauce = false;
                            _isExtraNuts = false;
                          });
                        },
                        child: ContainerChoose('Caramel sauce', 115.w, 36.h,
                            16.sp, _isExtraCaramelSauce),
                      ),
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
                      InkWell(
                        onTap: () {
                          setState(() {
                            _extra = 'Chocolate sauce';
                            _isExtraChocolateSauce = !_isExtraChocolateSauce;
                            _isExtraWhippingCream = false;
                            _isExtraCaramelSauce = false;
                            _isExtraNuts = false;
                          });
                        },
                        child: ContainerChoose('Chocolate sauce', 115.w, 36.h,
                            16.sp, _isExtraChocolateSauce),
                      ),
                      SizedBox(
                        width: 27.w,
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              _extra = 'Nuts';
                              _isExtraNuts = !_isExtraNuts;
                              _isExtraWhippingCream = false;
                              _isExtraCaramelSauce = false;
                              _isExtraChocolateSauce = false;
                            });
                          },
                          child: ContainerChoose(
                              'Nuts', 115.w, 36.h, 18.sp, _isExtraNuts)),
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
