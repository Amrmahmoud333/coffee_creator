import 'package:auto_size_text/auto_size_text.dart';
import 'package:coffee_creator/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class MenuScreen extends StatefulWidget {
  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  String _title = 'Cold drinks';
  double height(double n) {
    return MediaQuery.of(context).size.height * (n / 851);
  }

  double width(double n) {
    return MediaQuery.of(context).size.width * (n / 393);
  }

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = new GlobalKey<ScaffoldState>();

    final List<String> titles = [
      "Iced Latte",
      "Iced Coffee",
      "Iced Coffee",
      "Iced Coffee",
      "Iced Coffee",
      "Iced Coffee",
    ];
    final List<Widget> images = [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
          border: Border.all(
            width: 5.0,
            color: Colors.white,
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/iced_drinks1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
          border: Border.all(
            width: 5.0,
            color: Colors.white,
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/iced_drinks2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
          border: Border.all(
            width: 5.0,
            color: Colors.white,
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/iced_drinks3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
          border: Border.all(
            width: 5.0,
            color: Colors.white,
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/iced_drinks4.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
          border: Border.all(
            width: 5.0,
            color: Colors.white,
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/iced_drinks5.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
          border: Border.all(
            width: 5.0,
            color: Colors.white,
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/iced_drinks1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ];
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: AutoSizeText(_title),
        leading: IconButton(
          icon: Icon(Icons.menu, size: width(40)), // change this size and style
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: width(40)),
          ),
        ],
      ),
      drawer: DrawerScreen(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: VerticalCardPager(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.black38,
                ),
                titles: titles,
                images: images,
                onPageChanged: (page) {
                  if (page! == 3.0) {
                    setState(() {
                      _title = 'Hot Drinks';
                    });
                  }
                },
                align: ALIGN.CENTER,
                onSelectedItem: (index) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
