
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/Final_Project/Screens/HomeScreens/HomeScreen.dart';
import 'package:untitled/Final_Project/Screens/HomeScreens/NavBarScreen.dart';
import 'package:untitled/Widgets/Text_Field/Custom_Button.dart';

import '../../../Localization/t_key.dart';

class ResultScreen extends  StatefulWidget {
   ResultScreen({super.key ,required this.data});


   final String? data;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(

        height: double.infinity,
        width:  double.infinity,

        decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage('assets/w2.webp'),
          fit: BoxFit.fill ,
        )),
        child: Column(
          children:
          [

            SizedBox(height: 50,),
            Row(
              children: [
                IconButton( icon: Icon(Icons.arrow_back) ,color: Colors.teal ,onPressed: (){ Navigator.pop(context) ;}),
                SizedBox(width: 10,),
                Text(TKeys.Result.translate(context),style: TextStyle(color: Colors.teal , fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
            Column(

              children:
              [
                SizedBox(height: 55,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Text( TKeys.Result.translate(context),
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.teal),),
                    SizedBox(width: 5,),
                    Text( ':',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.teal),),
                    SizedBox(width: 20,),
                    Text( widget.data! ,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),),
                  ],
                ),
                SizedBox(height: 55,),

                CustomButton(
                    Title: TKeys.ViewDoctors.translate(context),
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NavBarScreen(),));
                    },
                ),
              ],
            )

          ],
        ),
      ),
    );


  }
}

