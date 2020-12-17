import 'package:flutter/material.dart';
import 'package:e_commerce/constance.dart';
import 'package:flutter/cupertino.dart';
import 'package:e_commerce/routes/signup_screen.dart';
import 'package:e_commerce/widgets/Custom_TextField.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in_all/google_sign_in_all.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';



class LoginScreen extends StatelessWidget {
  static String id='LoginScreen';
  @override
  Widget build(BuildContext context) {
       double height = MediaQuery.of(context).size.height;
        return Scaffold(
        backgroundColor: KMainColor,
          body: ListView(
            children:<Widget>[
            SizedBox(
               height: height*.2,
             ),
             CustomTextField(
                hint: 'Enter your email',
                icon: Icons.email,
              ),
             SizedBox(
               height: height*.02,
             ), 
              CustomTextField(
                 icon: Icons.lock,
                 hint: 'Enter your password',
                 ),
                SizedBox(
               height: height*.05,
             ),  
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120,vertical:30),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                    ),
                   onPressed: () {  },
                  color: Colors.black,
                  
                   child: Text(
                     'Login',
                     style: TextStyle(
                       color: Colors.white,
                     ),
                     ),
                   ),
              ) ,
               SizedBox(
               height: height*.01,
             ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text("Don't have an account ? ",
                   style: TextStyle(
                     color:Colors.white,
                     fontSize: 16
                     ),
                   ),
                  GestureDetector(
                     onTap: (){
                       Navigator.pushNamed(context, signup_screen.id);
                     },
                     child: Text('Sign up',
                     style: TextStyle(
                       fontSize: 16
                     ) ,
                     ),
                   )
                 ],
               )
        ],
      ),
    );
  }
}
