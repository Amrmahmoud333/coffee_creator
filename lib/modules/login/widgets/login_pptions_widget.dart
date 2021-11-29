import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginOptionsWidget extends StatelessWidget {
  const LoginOptionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          OutlinedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child:
                  SvgPicture.asset('assets/images/Facebook.svg'),
                  width: MediaQuery.of(context).size.height * 0.025,
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Facebook',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: SvgPicture.asset('assets/images/Google.svg'),
                  width: MediaQuery.of(context).size.height * 0.025,
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Google',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
