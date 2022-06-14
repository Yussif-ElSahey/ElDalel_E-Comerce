import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:sign_button/sign_button.dart';

import 'login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/1.png'),
              )),
            ),
            Column(
              children: [
                MaterialButton(
                  padding: EdgeInsets.all(10),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  },
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: HexColor("##7C1122"),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'VIEW AS GUEST',
                    style: TextStyle(
                      color: HexColor("#7C1122"),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  minWidth: double.infinity,
                  height: 40,
                ),
                Row(children: <Widget>[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                        child: Divider(
                          color: HexColor("#9F9E9E"),
                          height: 50,
                        )),
                  ),
                  Text(
                    "OR",
                    style: TextStyle(color: HexColor("#9F9E9E")),
                  ),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                        child: Divider(
                          color: HexColor("#9F9E9E"),
                          height: 50,
                        )),
                  ),
                ]),

                //SizedBox(height: 10 ,),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  },
                  color: HexColor("#7C1122"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'REGISTER OR LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  minWidth: double.infinity,
                  height: 40,
                ),

                Text(
                  'Continue with',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, //Center Column contents vertically,

              children: [
                SignInButton.mini(
                  buttonType: ButtonType.appleDark,
                  onPressed: () {},
                ),
                SignInButton.mini(
                  buttonType: ButtonType.facebook,
                  onPressed: () {},
                ),
                SignInButton.mini(
                  buttonType: ButtonType.google,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
