import 'package:LoginAndSignup/roundedRectButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:LoginAndSignup/inputWidget.dart';
import 'main.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.3),
        ),
        Column(
          children: <Widget>[
            ///holds email header and inputField
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        InputWidget(30.0, "Username", false),
                        InputWidget(30.0, "Password", true),
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.only(right: 50),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(top: 40),
                            )),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: ShapeDecoration(
                                shape: CircleBorder(),
                                gradient: LinearGradient(
                                    colors: signInGradients,
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                              ),
                              child: ImageIcon(
                                AssetImage("images/ic_forward.png"),
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 50),
            ),
            RoundRectButton("Forget Password", signInGradients, false,
                MaterialPageRoute(builder: (context) => ForgetPasswordPage())),
            RoundRectButton("Create an Account", signUpGradients, false,
                MaterialPageRoute(builder: (context) => SignupPage())),
          ],
        )
      ],
    );
  }
}

class RoundedRectButton {}

const List<Color> signInGradients = [
  Color(0xFF0EDED2),
  Color(0xFF03A0FE),
];

const List<Color> signUpGradients = [
  Color(0xFFFF9945),
  Color(0xFFFc6076),
];
