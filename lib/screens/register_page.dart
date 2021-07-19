import 'package:flutter/material.dart';
import 'package:zapatos/widgets/custom_buttons.dart';
import 'package:zapatos/widgets/custom_input.dart';

import 'constants.dart';

class RegisterPage extends StatefulWidget {
  
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: SafeArea(
        
              child: Container(
                width: double.infinity,
        child: Column(
          mainAxisAlignment:  
          MainAxisAlignment.spaceBetween ,
          children: [
            Container(
              padding: EdgeInsets.only(
                top:24.0,
              ),
              child: Text("Create New Account",
               textAlign: TextAlign.center,
               style: Constants.boldHeadig,
               ),
            ),
            Column(
              children: [
              CustomInput(
                hintText: "Email...",
              ),
               CustomInput(
                 hintText: "Password...",
               ),
               CustomBtn(
                 onPressed: (){
                   print("Clicked the Login btn");
                 },
                  outlineBtn: false, 
                  text: "Login "),

              ],
            ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 16.0,
          ),
          child: CustomBtn(
              text: "Create New Account",
              onPressed: (){
                print("clicked the btn");
              }, outlineBtn: true ,
            ),
        ),

        
          ],
        ),
              ),
      )
    );
  }
}