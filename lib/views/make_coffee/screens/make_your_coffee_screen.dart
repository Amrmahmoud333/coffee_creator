import 'package:auto_size_text/auto_size_text.dart';
import 'package:coffee_creator/data/data_API/make_coffee_API.dart';
import 'package:coffee_creator/data/models/make_your_coffee_model/make_coffee_model.dart';
import 'package:coffee_creator/providers/make_coffee_provider/make_coffee_provider.dart';
import 'package:coffee_creator/views/coffee_details/coffee_details_screen.dart';
import 'package:coffee_creator/views/drawer/drawer.dart';
import 'package:coffee_creator/views/make_coffee/widget/container_choose.dart';
import 'package:coffee_creator/views/make_coffee/widget/container_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class MakeYourCoffeScreen extends StatefulWidget {
  const MakeYourCoffeScreen({Key? key}) : super(key: key);
  static const routeName = '/make_your_coffee';

  @override
  State<MakeYourCoffeScreen> createState() => _MakeYourCoffeScreenState();
}

class _MakeYourCoffeScreenState extends State<MakeYourCoffeScreen> {
  int _valueOrigin = 1;
  int _valueSugar = 1;
  List<String> OriginList = [
    'Brazilian',
    'Arabica',
    'Robusta',
    'Liberica',
    'Excelsa'
  ];
  List<String> sugarList = ['0Sp', '1Sp', '2Sp', '3Sp', '4Sp'];
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  // manage Cup Size
  String _cupSize = '';
  bool _isCupSizeM = false;
  bool _isCupSizeS = false;
  bool _isCupSizeL = false;
  // manage coffee
  String _coffee = '';
  bool _isCoffeCold = false;
  bool _isCoffeHot = false;
  // manage roast
  String _roast = '';
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
    double height(double n) {
      return MediaQuery.of(context).size.height * (n / 851);
    }

    double width(double n) {
      return MediaQuery.of(context).size.width * (n / 393);
    }

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return ChangeNotifierProvider(
      create: (context) =>
          MakeCoffeeProvider(coffeeDetailsRepo: MakeCoffeeAPI()),
      builder: (context, _) => Scaffold(
        key: _scaffoldKey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(height(77)),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: Icon(Icons.menu, size: height(40)),
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
                height: height(34),
              ),
              Padding(
                padding: EdgeInsets.only(left: width(84), right: width(64)),
                child: SvgPicture.asset(
                  'assets/images/cup.svg',
                  width: width(245),
                  height: height(147),
                ),
              ),
              SizedBox(
                height: height(31),
              ),
              Row(
                children: [
                  SizedBox(
                    width: width(33),
                  ),
                  ContainerText('Cup Size', width(113), height(33), 25.0),
                  SizedBox(
                    width: width(5),
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
                      child: ContainerChoose(
                          'S', width(63), height(36), 25.0, _isCupSizeS)),
                  SizedBox(
                    width: width(14),
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
                      child: ContainerChoose(
                          'M', width(63), height(36), 25.0, _isCupSizeM)),
                  SizedBox(
                    width: width(14),
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
                      child: ContainerChoose(
                          'L', width(63), height(36), 25.0, _isCupSizeL)),
                  SizedBox(
                    width: width(25),
                  ),
                ],
              ),
              SizedBox(
                height: height(46),
              ),
              Row(
                children: [
                  SizedBox(
                    width: width(33),
                  ),
                  ContainerText('Coffee', width(122), height(33), 25.0),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _coffee = 'Hot';
                          _isCoffeHot = !_isCoffeHot;
                          _isCoffeCold = false;
                        });
                      },
                      child: ContainerChoose(
                          'Hot', width(95), height(36), 18.0, _isCoffeHot)),
                  SizedBox(
                    width: width(27),
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _coffee = 'Cold';
                          _isCoffeCold = !_isCoffeCold;
                          _isCoffeHot = false;
                        });
                      },
                      child: ContainerChoose(
                          'Cold', width(95), height(36), 18.0, _isCoffeCold)),
                ],
              ),
              SizedBox(
                height: height(64),
              ),
              Row(
                children: [
                  SizedBox(
                    width: width(33),
                  ),
                  ContainerText('Origin', width(126), height(33), 25.0),
                  SizedBox(
                    width: width(52),
                  ),
                  Container(
                    width: width(135),
                    height: height(36),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(11)),
                        border: Border.all(
                            color: const Color(0xffe6d6c7), width: 3),
                        color: const Color(0xffffffff)),
                    child: DropdownButton(
                      value: _valueOrigin,
                      underline: SizedBox(),
                      items: [
                        DropdownMenuItem(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  width(19), 0, width(23), 0),
                              child: AutoSizeText(
                                'Brazilian',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontSize: 14),
                              ),
                            ),
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  width(19), 0, width(23), 0),
                              child: AutoSizeText(
                                'Arabica',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontSize: 14),
                              ),
                            ),
                          ),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  width(19), 0, width(23), 0),
                              child: AutoSizeText(
                                'Robusta',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontSize: 14),
                              ),
                            ),
                          ),
                          value: 3,
                        ),
                        DropdownMenuItem(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  width(19), 0, width(23), 0),
                              child: AutoSizeText(
                                'Liberica',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontSize: 14),
                              ),
                            ),
                          ),
                          value: 4,
                        ),
                        DropdownMenuItem(
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  width(19), 0, width(23), 0),
                              child: AutoSizeText(
                                'Excelsa',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontSize: 14),
                              ),
                            ),
                          ),
                          value: 5,
                        ),
                      ],
                      onChanged: (dynamic v) {
                        setState(() {
                          _valueOrigin = v;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height(46),
              ),
              Row(
                children: [
                  SizedBox(
                    width: width(33),
                  ),
                  ContainerText('Roast', width(100), height(33), 25.0),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _roast = 'Light';
                          _isRoastLight = !_isRoastLight;
                          _isRoastDark = false;
                          _isRoastMediam = false;
                        });
                      },
                      child: ContainerChoose(
                          'Light', width(73), height(36), 18.0, _isRoastLight)),
                  SizedBox(
                    width: width(8),
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _roast = 'Mediam';
                          _isRoastMediam = !_isRoastMediam;
                          _isRoastLight = false;
                          _isRoastDark = false;
                        });
                      },
                      child: ContainerChoose('Mediam', width(73), height(36),
                          18.0, _isRoastMediam)),
                  SizedBox(
                    width: width(8),
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _roast = 'Dark';
                          _isRoastDark = !_isRoastDark;
                          _isRoastLight = false;
                          _isRoastMediam = false;
                        });
                      },
                      child: ContainerChoose(
                          'Dark', width(73), height(36), 18.0, _isRoastDark)),
                  SizedBox(
                    width: width(25),
                  ),
                ],
              ),
              SizedBox(
                height: height(46),
              ),
              Row(
                children: [
                  SizedBox(
                    width: width(33),
                  ),
                  ContainerText('Sugar Type', width(131), height(33), 25.0),
                  SizedBox(
                    width: width(15),
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _sugarType = 'Normal';
                          _isSugarTypeNormal = !_isSugarTypeNormal;
                          _isSugarTypeDiet = false;
                        });
                      },
                      child: ContainerChoose('Normal', width(90), height(36),
                          16.0, _isSugarTypeNormal)),
                  SizedBox(
                    width: width(9),
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _sugarType = 'Diet';
                          _isSugarTypeDiet = !_isSugarTypeDiet;
                          _isSugarTypeNormal = false;
                        });
                      },
                      child: ContainerChoose('Diet', width(90), height(36),
                          16.0, _isSugarTypeDiet)),
                  SizedBox(
                    width: width(25),
                  ),
                ],
              ),
              SizedBox(
                height: height(46),
              ),
              Row(
                children: [
                  SizedBox(
                    width: width(33),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: width(27)),
                    child: AutoSizeText(
                      'Sugar amount',
                      style: TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 25),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    width: width(27),
                  ),
                  Container(
                    width: width(100),
                    height: height(36),
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
                            padding: EdgeInsets.fromLTRB(
                                width(9.5), 0, width(7.12), 0),
                            child: AutoSizeText(
                              '0Sp',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                  fontSize: 15),
                            ),
                          )),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Center(
                              child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                width(9.5), 0, width(7.12), 0),
                            child: AutoSizeText(
                              '1Sp',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                  fontSize: 15),
                            ),
                          )),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Center(
                              child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                width(9.5), 0, width(7.12), 0),
                            child: AutoSizeText(
                              '2Sp',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                  fontSize: 15),
                            ),
                          )),
                          value: 3,
                        ),
                        DropdownMenuItem(
                          child: Center(
                              child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                width(9.5), 0, width(7.12), 0),
                            child: AutoSizeText(
                              '3Sp',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                  fontSize: 15),
                            ),
                          )),
                          value: 4,
                        ),
                        DropdownMenuItem(
                          child: Center(
                              child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                width(9.5), 0, width(7.12), 0),
                            child: AutoSizeText(
                              '4Sp',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                  fontSize: 14),
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
                height: height(46),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: width(33),
                      ),
                      ContainerText('Flavor', width(86), height(33), 25.0),
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
                          child: ContainerChoose('Caramel', width(95),
                              height(36), 18.0, _isFlavorCaramel)),
                      SizedBox(
                        width: width(27),
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
                        child: ContainerChoose('Vanilia', width(95), height(36),
                            18.0, _isFlavorVanilia),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height(14),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width(20),
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
                        child: ContainerChoose('Pumpkin Spice', width(110),
                            height(36), 16.0, _isFlavorPumpkinSpice),
                      ),
                      SizedBox(
                        width: width(27),
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
                        child: ContainerChoose('Mocha', width(95), height(36),
                            18.0, _isFlavorMocha),
                      ),
                      SizedBox(
                        width: width(27),
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
                        child: ContainerChoose('Hazelnut', width(95),
                            height(36), 18.0, _isFlavorHazelnut),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height(46),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: width(33),
                      ),
                      ContainerText('Extra', width(86), height(33), 25.0),
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
                        child: ContainerChoose('Whipping cream', width(115),
                            height(36), 16.0, _isExtraWhippingCream),
                      ),
                      SizedBox(
                        width: width(27),
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
                        child: ContainerChoose('Caramel sauce', width(115),
                            height(36), 16.0, _isExtraCaramelSauce),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height(14),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width(120),
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
                        child: ContainerChoose('Chocolate sauce', width(115),
                            height(36), 16.0, _isExtraChocolateSauce),
                      ),
                      SizedBox(width: width(27)),
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
                          child: ContainerChoose('Nuts', width(115), height(36),
                              16.0, _isExtraNuts)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height(46),
              ),
              Container(
                height: height(56),
                width: width(180),
                child: ElevatedButton(
                  onPressed: () async {
                    await Provider.of<MakeCoffeeProvider>(context,
                            listen: false)
                        .makeCoffee(
                      makeCoffeeModel: MakeCoffeeModel(
                        cupSize: _cupSize,
                        coffeeType: _coffee,
                        origin: OriginList[_valueOrigin - 1],
                        roast: _roast,
                        sugarType: _sugarType,
                        sugarAmount: sugarList[_valueSugar - 1],
                        flavor: _flavor,
                        extra: _extra,
                      ),
                    );
                    Navigator.pushNamed(context, CoffeeDetailsScreen.routeName);
                  },
                  child: AutoSizeText('Done',
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
                height: height(46),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
