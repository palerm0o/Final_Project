import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Localization/t_key.dart';
import '../../../Widgets/Text_Field/Custom_Button.dart';
import '../../../Widgets/Text_Field/Text_Field.dart';
import '../../../Widgets/Text_Field/User_Info_Card.dart';
import 'EditProfile.dart';

class InformationScreen extends  StatelessWidget {






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage('assets/w2.webp'),
          fit: BoxFit.fill ,
        )),

        child: Column(
          children:
          [
            SizedBox(height: 55,),
            Row(
              children: [
                IconButton( icon: Icon(Icons.arrow_back) ,color: Colors.teal ,onPressed: (){ Navigator.pop(context) ;}),
                SizedBox(width: 10,),
                Text(TKeys.AccountInformation.translate(context) ,style: TextStyle(color: Colors.teal , fontWeight: FontWeight.bold,fontSize: 20),),


              ],
            ),
            SizedBox(height: 60,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(

                child: Column(
                  children:
                  [
                    Card(
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children:
                          [


                            SizedBox(height: 15,),
                            UserI_Info_Card(Text1: TKeys.Name.translate(context) , UserText: ' ',),
                            SizedBox(height: 20,),
                            UserI_Info_Card(Text1: TKeys.Email.translate(context) , UserText: ' ',) ,
                            SizedBox(height: 20,),
                            UserI_Info_Card(Text1: TKeys.Phone.translate(context) , UserText: ' ',) ,
                            SizedBox(height: 20,),
                            UserI_Info_Card(Text1: TKeys.Gender.translate(context) , UserText: ' ',) ,
                            SizedBox(height: 20,),
                            UserI_Info_Card(Text1: TKeys.Location.translate(context) , UserText: ' ',) ,
                            SizedBox(height: 15,),

                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 30,),

                    Center(
                      child: CustomButton(
                        Title: TKeys.EditProfile.translate(context) ,
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}


