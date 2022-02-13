import 'package:auto_size_text/auto_size_text.dart';
import 'package:coffee_creator/providers/make_coffee_provider/make_coffee_provider.dart';
import 'package:coffee_creator/views/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoffeeDetailsScreen extends StatelessWidget {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  static const routeName = '/coffee_details';

  @override
  Widget build(BuildContext context) {
    double height(double n) {
      return MediaQuery.of(context).size.height * (n / 851);
    }

    double width(double n) {
      return MediaQuery.of(context).size.width * (n / 393);
    }

    return ChangeNotifierProvider(
      create: (context) => MakeCoffeeProvider(),
      builder: (context, _) => Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(82.0),
          child: AppBar(
            elevation: 15,
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.menu,
                  size: width(40)), // change this size and style
              onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            ),
            title: Center(
              child: AutoSizeText(
                'Your coffee',
                style: const TextStyle(
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontSize: 30.0),
              ),
            ),
          ),
        ),
        drawer: DrawerScreen(),
        body: Column(
          children: [
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
              child: Consumer<MakeCoffeeProvider>(
                builder: (context, value, _) => AutoSizeText(
                    value.coffeeDetails().toString(),
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
