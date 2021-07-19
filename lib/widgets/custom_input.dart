import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:zapatos/screens/constants.dart';

class CustomInput extends StatelessWidget {
  final String hintText;
  CustomInput({required this.hintText});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 24.0,
      ),
      decoration: BoxDecoration(
        color: Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(
            vertical: 17.0,
            horizontal: 21.0,
          )
        ),
        style:  Constants.regularDarkText,
      ),
    );
  }
}