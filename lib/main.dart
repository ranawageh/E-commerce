import 'package:flutter/material.dart';
import 'package:e_commerce/routes/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:e_commerce/routes/signup_screen.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:google_sign_in_all/google_sign_in_all.dart';
//import 'package:google_sign_in/google_sign_in.dart';
//import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      initialRoute: LoginScreen.id,
      routes:{
        LoginScreen.id:(context)=>LoginScreen(),
        signup_screen.id:(context)=>signup_screen()
      } ,
    );
  }
}