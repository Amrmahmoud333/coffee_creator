import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class MenuScreen extends StatefulWidget {
  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  String _title = 'Cold drinks';

  @override
  Widget build(BuildContext context) {
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
      appBar: AppBar(
        title: Text(_title),
        leading: Icon(Icons.menu),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
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
                  if (page! == 3.0){
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
