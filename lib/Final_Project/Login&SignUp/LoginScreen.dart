import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:untitled/Widgets/Text_Field/Text_Field.dart';
import '../../Localization/app_localizations.dart';
import '../../Localization/t_key.dart';
import '../../Widgets/Text_Field/Custom_Button.dart';
import '../../Widgets/Text_Field/Text_Password_Field.dart';

import 'LoadingScreen2.dart';
import 'SignUpScreen1.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  GlobalKey<FormState> fornState = GlobalKey();
  bool isLoading =false ;
  String? email,password;



  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: fornState,
        child: Container(

          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(image: DecorationImage(
            image: AssetImage('assets/n1.jpg'),
            fit: BoxFit.fill ,
          )),

          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [

                    SizedBox(
                      height: 40.5,
                    ),
                    Center(
                      child:
                      Column(
                        children: [
                          Text(
                      TKeys.WelcomeBack.translate(context),
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(

                              TKeys.LoginToYourAccount.translate(context),
                            style: TextStyle(

                              color: Colors.grey,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w900,

                            ),
                          ),
                        ],
                      ),

                    ),
                    SizedBox(
                      height: 20.5,
                    ),
                    Text_Field(
                      labelText: TKeys.Email.translate(context), Icoon: Icon(Icons.email,),
                      onChange: (value){ email =value ; },

                    ),
                    SizedBox(
                      height: 20.5,
                    ),
                    Text_Password_Field(labelTextt: TKeys.Password.translate(context),
                        onChange: (value){ password =value ; }),
                    SizedBox(
                      height: 20.5,
                    ),
                    Center(
                      child: CustomButton(
                        Title: TKeys.LogIn.translate(context),
                        onTap: ()
                        {
                          isLoading=true; setState(() {  });
                          if (fornState.currentState!.validate())
                          {

                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoadingScreen2()));
                          }
                          else
                          {};
                          isLoading=false; setState(() {  });

                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.5,
                    ),
                    Center(
                      child: Text(
                        TKeys.ForgetPassword.translate(context),
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 10.5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          TKeys.DontHaveAnAccount.translate(context),style: TextStyle(color: Colors.white),
                        ),
                        TextButton (

                          onPressed: () {

                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));

                          },
                          child: Text(
                            TKeys.SignUp.translate(context),
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal),
                          ),
                        ),


                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

