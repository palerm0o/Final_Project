import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Final_Project/Login&SignUp/LoginScreen.dart';
import '../../Localization/t_key.dart';
import '../../Widgets/Text_Field/Custom_Button.dart';
import '../../Widgets/Text_Field/Text_Field.dart';
import '../../Widgets/Text_Field/Text_Password_Field.dart';



class SignUpScreen2 extends StatefulWidget {

  @override
  State<SignUpScreen2> createState() => _SignUpScreen2State();
}


class _SignUpScreen2State extends State<SignUpScreen2> {


  GlobalKey<FormState> fornState = GlobalKey();
  String? email,Gender,phone,password;



  @override

  Widget build(BuildContext context) {

    void showFlashBar(BuildContext context, String message) {

      Flushbar(
        message: TKeys.CreatedSuccessfuled.translate(context),
        duration: const Duration(seconds: 5),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.teal,
        flushbarStyle: FlushbarStyle.GROUNDED,
        icon: Icon(Icons.gpp_good_outlined),

      ).show(context);
    }


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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 70,),
                Row(
                  children: [
                    IconButton( icon: Icon(Icons.arrow_back) ,color: Colors.teal ,onPressed: (){ Navigator.pop(context) ;}),
                  ],
                ),
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children:
                      [
                        Text_Field(labelText: TKeys.Email.translate(context), Icoon: Icon( Icons.email,), onChange: (value){ email =value ; }),
                        SizedBox(height: 20.5,),
                        Text_Password_Field( labelTextt: TKeys.Password.translate(context),onChange: (value){ password =value ; }),
                        SizedBox(height: 20.5,),
                        Text_Password_Field( labelTextt: TKeys.Repeatpassword.translate(context),onChange: (value){ password =value ; }),
                        SizedBox(height: 35.0,),
                        Text_Field(labelText: TKeys.Phone.translate(context), Icoon: Icon( Icons.phone,), onChange: (value){ phone =value ; }),
                        SizedBox(height: 35.0,),
                        Text_Field(labelText: TKeys.Gender.translate(context), Icoon: Icon( Icons.account_circle_rounded,), onChange: (value){ Gender =value ; }),
                        SizedBox(height: 35.0,),
                        Center(
                          child: CustomButton(
                            Title: TKeys.Submit.translate(context),
                            onTap: ()
                            {
                              if (fornState.currentState!.validate())
                              {
                                showFlashBar(context,'');
                              }
                            },
                          ),
                        ),
                        SizedBox( height: 15.5, ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              TKeys.AlreadyHaveAnAccount.translate(context),
                                style: TextStyle(color: Colors.white),
                            ),
                            TextButton (
                              onPressed: () {

                                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                              },
                              child: Text(
                                TKeys.LogIn.translate(context),
                                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal),
                              ),
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}