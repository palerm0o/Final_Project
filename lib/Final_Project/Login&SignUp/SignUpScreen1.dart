import 'package:flutter/material.dart';

import 'package:untitled/Final_Project/Login&SignUp/LoginScreen.dart';
import 'package:untitled/Widgets/Text_Field/Text_Field.dart';
import '../../Localization/t_key.dart';
import '../../Widgets/Text_Field/Custom_Button.dart';
import 'SignUpScreen2.dart';

class SignUpScreen extends StatefulWidget {



  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {




  var passVisabil = true ;
  GlobalKey<FormState> fornState = GlobalKey();

  String? selectedValue;
  List<String> dropdownItems = ['Male','Femeal'];

  bool firstValue = false;
  bool secondValue = false;


  late DateTime _selectDate ;
  String? Date,LastName,FirstName,Location;





  @override

  Widget build(BuildContext context) {
    return Scaffold(

      body:

      Container(

        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage('assets/n1.jpg'),
          fit: BoxFit.fill ,
        )),


        child: Form(
          key: fornState,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 60,),
                Row(
                  children: [
                    IconButton( icon: Icon(Icons.arrow_back) ,color: Colors.teal ,onPressed: (){ Navigator.pop(context) ;}),
                  ],
                ),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          Center(
                            child:
                            Column(
                              children: [
                                Text(
                                  TKeys.Register.translate(context),
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold,

                                  ),
                                ),
                                Text(
                                    TKeys.CreateYourAccount.translate(context),
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w900,

                                  ),
                                ),
                              ],
                            ),

                          ),
                          SizedBox(height: 20.5,),

                          Text_Field(labelText: TKeys.FirstName.translate(context), Icoon: Icon(Icons.person,), onChange: (value){ FirstName =value ; }),
                          SizedBox(height: 20.5,),
                          Text_Field(labelText: TKeys.LastName.translate(context),  Icoon: Icon(Icons.person,), onChange: (value){ LastName =value ; }),
                          SizedBox(height: 20.5,),
                          Text_Field(labelText: TKeys.EnterDate.translate(context), Icoon: Icon( Icons.date_range,), onChange: (value){ Date =value ; }),
                          SizedBox(height: 20.5,),
                          Text_Field( labelText: TKeys.Location.translate(context),  Icoon: Icon(Icons.location_on_outlined), onChange: (value){ Location =value ; }),
                          SizedBox(height: 60.5,),

                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Row(
                          //
                          //       children: [
                          //         Checkbox(
                          //             value: firstValue,
                          //             onChanged: (value) {
                          //               setState(() {
                          //                 firstValue = value!;
                          //               });
                          //             }),
                          //         const Text(
                          //           "Male",
                          //           style: TextStyle(
                          //               color: Colors.grey,
                          //               fontSize: 20,
                          //               fontWeight: FontWeight.bold),
                          //         )
                          //       ],
                          //     ),
                          //     SizedBox(width: 30,),
                          //     Row(
                          //       children: [
                          //         Checkbox(
                          //             value: secondValue,
                          //             onChanged: (value) {
                          //               setState(() {
                          //                 secondValue = value!;
                          //               });
                          //             }),
                          //         const Text(
                          //           "Female",
                          //           style: TextStyle(
                          //               color: Colors.grey,
                          //               fontSize: 20,
                          //               fontWeight: FontWeight.bold
                          //           ),
                          //         )
                          //       ],
                          //     ),
                          //   ],
                          // ),
                          // SizedBox( height: 30.5,),


                          Center(
                            child: CustomButton(
                              Title: TKeys.Next.translate(context),
                              onTap: ()
                              {
                                if (fornState.currentState!.validate())
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen2()));
                                }
                              },
                            ),
                          ),
                          SizedBox( height: 50.5, ),

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




