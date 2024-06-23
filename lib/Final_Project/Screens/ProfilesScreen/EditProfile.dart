import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Localization/t_key.dart';
import '../../../Widgets/Text_Field/Custom_Button.dart';
import '../../../Widgets/Text_Field/Text_Field.dart';
import '../../../Widgets/Text_Field/Text_Password_Field.dart';
import 'InformationScreen.dart';

class EditProfile extends  StatelessWidget {


  GlobalKey<FormState> fornState = GlobalKey();

  String? email,LastName,FirstName,Location,phone,password,Gender;




  @override


  Widget build(BuildContext context) {

    void showFlashBar(BuildContext context, String message) {

      Flushbar(
        message: TKeys.EditSuccessfuled.translate(context) ,
        duration: Duration(seconds: 5),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.teal,
        flushbarStyle: FlushbarStyle.GROUNDED,
        icon: Icon(Icons.gpp_good_outlined),

      )..show(context);

    }




    return Scaffold(

      body: Form(
        key: fornState,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(image: DecorationImage(
            image: AssetImage('assets/w2.webp'),
            fit: BoxFit.fill ,
          )),

          child: SingleChildScrollView(
            child: Column(
              children:
              [
                SizedBox(height: 60,),
                Row(
                  children: [
                    IconButton( icon: Icon(Icons.arrow_back) ,color: Colors.teal ,onPressed: (){ Navigator.pop(context) ;}),
                    SizedBox(width: 10,),
                    Text(TKeys.EditProfile.translate(context) ,style: TextStyle(color: Colors.teal , fontWeight: FontWeight.bold,fontSize: 20),),


                  ],
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children:
                        [

                          Text_Field(labelText: TKeys.FirstName.translate(context) , Icoon: Icon( Icons.person,color: Colors.teal,),onChange: (value){ FirstName =value ; }),
                          SizedBox( height: 20.5,),
                          Text_Field(labelText:TKeys.LastName.translate(context) , Icoon: Icon( Icons.person,color: Colors.teal,),onChange: (value){ LastName =value ; }),
                          SizedBox( height: 20.5, ),
                          Text_Field( labelText: TKeys.Location.translate(context) , Icoon: Icon(Icons.location_on_outlined),onChange: (value){ Location =value ; }),
                          SizedBox( height: 20.5,),
                          Text_Field(labelText: TKeys.Phone.translate(context) , Icoon: Icon( Icons.phone,color: Colors.teal,),onChange: (value){ phone =value ; }),
                          SizedBox( height: 20.5, ),
                          Text_Field(labelText: TKeys.Email.translate(context) , Icoon: Icon( Icons.email,color: Colors.teal,),onChange: (value){ email =value ; }),
                          SizedBox(height: 20.5,),
                          Text_Field(labelText: TKeys.Gender.translate(context) , Icoon: Icon( Icons.account_circle_rounded,color: Colors.teal,),onChange: (value){ Gender =value ; }),
                          SizedBox( height: 30, ),
                          Text_Password_Field( labelTextt: TKeys.Password.translate(context) ,onChange: (value){ password =value ; }),
                          SizedBox( height: 30,),
                          Text_Password_Field( labelTextt: TKeys.Repeatpassword.translate(context) ,onChange: (value){ password =value ; }),
                          SizedBox( height: 30, ),


                          Center(
                            child: CustomButton(
                              Title: TKeys.Submit.translate(context) ,
                              onTap: ()
                              {
                                if (fornState.currentState!.validate())
                                {
                                  showFlashBar(context,'');

                                }
                              },

                            ),
                          ),

                        ],
                      ),
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






