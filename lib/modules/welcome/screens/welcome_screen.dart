import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/images/welcome.jpeg'),
            width: double.infinity,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.5, //50
          ),
          Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ), //5
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              child: Center(
                child: FittedBox(
                  child: Text(
                    'Create & Drinking your coffee\nas you like, Now just breathe,\nrelax and enjoy to have your\ncoffee.',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ), //5
            Container(
              height: MediaQuery.of(context).size.height * 0.06, //6
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Log in',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ), //2
            Container(
              height: MediaQuery.of(context).size.height * 0.06, //6
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Sign up',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
