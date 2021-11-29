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
            height: 450,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 51),
            child: Column(children: [
              Container(
                child: Text(
                  'Create & Drinking your coffee as you like, Now just breathe, relax and enjoy to have your coffee.',
                  style: Theme.of(context).textTheme.headline2,
                ),
                height: 136,
                width: 291,
              ),
              Container(
                height: 54,
                width: 213,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Log in',style: Theme.of(context).textTheme.headline1,),
                ),
              ),
              SizedBox(height: 22,),
              Container(
                height: 54,
                width: 213,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Sign up',style: Theme.of(context).textTheme.headline1,),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
