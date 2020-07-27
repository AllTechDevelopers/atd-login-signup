import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final double top;
  final String hintText;
  final bool isObscure;

  InputWidget(this.top, this.hintText, this.isObscure);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10, bottom: 10),
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        child: Material(
          elevation: 3,
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(0.0),
                  topRight: Radius.circular(30.0))),
          child: Padding(
            padding: EdgeInsets.only(left: 40, right: 20),
            child: TextField(
              obscureText: isObscure,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: TextStyle(color: Color(0xFFE1E1E1), fontSize: 14)),
            ),
          ),
        ),
      ),
    );
  }
}
