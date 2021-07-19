import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {

final String text;
final Function onPressed;
final bool outlineBtn;
CustomBtn({required this.onPressed,required this.outlineBtn,required this.text});

  @override
  Widget build(BuildContext context) {

    bool _outlineBtn =  outlineBtn;

    return GestureDetector(
      onTap: (){},
          child: Container(
        height: 62.0,
        alignment:  Alignment.center,
        decoration:  BoxDecoration(
          color: outlineBtn ? Colors.transparent : Colors.blueGrey,
          border: Border.all(
            color: Colors.black,
            width:2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin:  EdgeInsets.symmetric(
          horizontal:23.0,
          vertical: 8.0
        ),
        child: Text(
          text ,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 15.0,
          color: _outlineBtn ? Colors.black : Colors.white,
          ),
        
      ),
      ),
    );
  }
}