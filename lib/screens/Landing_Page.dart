import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zapatos/screens/constants.dart';
import 'package:zapatos/screens/home_page.dart';
import 'package:zapatos/screens/login_page.dart';

class LandingPage extends StatelessWidget {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    
  
    @override
    Widget build(BuildContext context) {
      return FutureBuilder(
        future:  _initialization,
        builder: (context,snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Text("Error:${snapshot.error}") ,
                ),
            );
          }
          

          if (snapshot.connectionState == ConnectionState.done) {
      

            return StreamBuilder(
              stream:  FirebaseAuth.instance.authStateChanges(),
              builder: (context,streamsnapshot){
                if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Text("Error:${streamsnapshot.error}") ,
                ),
            );
          }
// conn state
          if(streamsnapshot.connectionState == ConnectionState.active){
          
          //get user
          Object? _user = streamsnapshot.data;

          if(_user == null){
            return LoginPage();

          }else{
         return HomePage();
          }
          }
          //checking the auth State.
           return Scaffold(
            body: Center(child: Text("Checking Auth..",
            style:  Constants.regularHaeding,
            ),
            ),
          );
 },
            );
        
      
          }
         // checking the Firebase -loading
          return Scaffold(
            body: Center(child: Text(".Inilialize app.",
            style:  Constants.regularHaeding,
            ),
            ),
          );
        
        },
      );
    }
  
  }