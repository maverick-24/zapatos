


import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:zapatos/screens/constants.dart';
import 'package:zapatos/screens/register_page.dart';
import 'package:zapatos/widgets/custom_buttons.dart';
import 'package:zapatos/widgets/custom_input.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
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
              child: Text("Welcome To Vanish ,\n Login into your Account",
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
              onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => RegisterPage()
      ),
  );
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