import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../Localization/t_key.dart';

class pneumonia extends StatelessWidget {
  const pneumonia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        SizedBox(width: 40 ,),
        Icon(Icons.arrow_forward_ios ,color: Colors.teal ),
        SizedBox(width: 10 ,),
        TextButton(
            onPressed: (){
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Center(child: Column(
                    children: [
                      Text(TKeys.Pneumonia.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25 ,color: Colors.teal),),
                      Padding(

                        padding: const EdgeInsets.only(top: 10),

                        child: Divider(
                          color: Colors.white60,
                          thickness: 2.5 ,
                          height: 15 ,
                        ),

                      ),
                    ],
                  )),
                  backgroundColor: Colors.black54 ,
                  content:  SingleChildScrollView(

                    child: Row(
                      children:
                      [

                        Expanded(
                          child: ElevatedButton(
                            onPressed: () async
                            {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Center(child: Column(
                                    children: [
                                      Text(TKeys.OldPeople.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.teal),),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Divider(
                                          thickness: 2.5,
                                          height: 15,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  )),
                                  backgroundColor: Colors.black54 ,
                                  content:  SingleChildScrollView(

                                    child: Column(
                                      children:
                                      [

                                        Text(TKeys.O1.translate(context),
                                          style: TextStyle(fontSize: 15,color: Colors.teal),
                                        ),
                                        SizedBox(height: 10 ,),

                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              Icon(Icons.ac_unit,color: Colors.teal,),
                                              SizedBox(width: 5,),
                                              Text(TKeys.O2.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                            ],
                                          ),
                                        ),

                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              Icon(Icons.ac_unit,color: Colors.teal),
                                              SizedBox(width: 5,),
                                              Text(TKeys.O3.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                            ],
                                          ),
                                        ),

                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              Icon(Icons.ac_unit,color: Colors.teal),
                                              SizedBox(width: 5,),
                                              Text(TKeys.O4.translate(context),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                              SizedBox(width: 10,),
                                              Icon(Icons.ac_unit,color: Colors.teal),
                                              SizedBox(width: 5,),
                                              Text(TKeys.O5.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),

                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 5,),

                                        Text(TKeys.O6.translate(context),
                                          style: TextStyle(fontSize: 15,color: Colors.teal),
                                        ),
                                        SizedBox(height: 5,),

                                        Row(
                                          children: [

                                            Icon(Icons.ac_unit,color: Colors.teal),
                                            SizedBox(width: 5,),
                                            Text(TKeys.O7.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                          ],
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              Icon(Icons.ac_unit,color: Colors.teal),
                                              SizedBox(width: 5,),
                                              Text(TKeys.O8.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),

                                            ],
                                          ),
                                        ),





                                      ],
                                    ),
                                  ),
                                  actions: [

                                    Center(
                                        child: TextButton(
                                          onPressed: () {

                                            Navigator.pop(context);

                                          },

                                          child: Text(
                                            TKeys.Cloce.translate(context),
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey,

                                            ),
                                          ),
                                        )
                                    ),

                                  ],

                                ),
                              );
                            },
                            child:  Text(TKeys.OldPeople.translate(context) ,style: TextStyle(color: Colors.black),),
                            style:  ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.teal), // Set background color
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Set text color
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold), // Set text style
                              ),
                              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Set padding
                              ),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0), // Set border radius
                                ),
                              ),
                              elevation: MaterialStateProperty.all<double>(4.0), // Set elevation
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: ElevatedButton(

                            onPressed: () async {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Center(child: Column(
                                    children: [

                                      Text(TKeys.YoungPeople.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.teal),),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Divider(
                                          thickness: 2.5,
                                          height: 15,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  )),
                                  backgroundColor: Colors.black54 ,
                                  content:   SingleChildScrollView(

                                    child: Column(
                                      children:
                                      [

                                        Text(TKeys.Y1.translate(context),
                                          style: TextStyle(fontSize: 15,color: Colors.teal),
                                        ),
                                        SizedBox(height: 10 ,),

                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              Icon(Icons.ac_unit,color: Colors.teal),
                                              SizedBox(width: 5,),
                                              Text(TKeys.Y2.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                            ],
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              Icon(Icons.ac_unit,color: Colors.teal,),
                                              SizedBox(width: 5,),
                                              Text(TKeys.Y3.translate(context),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                            ],
                                          ),
                                        ),

                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              Icon(Icons.ac_unit,color: Colors.teal),
                                              SizedBox(width: 5,),
                                              Text(TKeys.Y4.translate(context),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                            ],
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              Icon(Icons.ac_unit,color: Colors.teal),
                                              SizedBox(width: 5,),
                                              Text(TKeys.Y5.translate(context),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                              SizedBox(width: 6,),
                                              Icon(Icons.ac_unit,color: Colors.teal),
                                              SizedBox(width: 5,),
                                              Text(TKeys.Y6.translate(context),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                            ],
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              Icon(Icons.ac_unit,color: Colors.teal),
                                              SizedBox(width: 5,),
                                              Text(TKeys.Y7.translate(context),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                            ],
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(

                                            children: [
                                              Icon(Icons.ac_unit,color: Colors.teal),
                                              SizedBox(width: 5,),
                                              Text(TKeys.Y8.translate(context),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),

                                            ],
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              Icon(Icons.ac_unit,color: Colors.teal),
                                              SizedBox(width: 5,),
                                              Text(TKeys.Y9.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                              SizedBox(width: 17,),
                                              Icon(Icons.ac_unit,color: Colors.teal),
                                              SizedBox(width: 5,),
                                              Text(TKeys.Y10.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                            ],
                                          ),
                                        ),




                                      ],
                                    ),
                                  ),
                                  actions: [

                                    Center(
                                        child: TextButton(
                                          onPressed: () {

                                            Navigator.pop(context);

                                          },

                                          child: Text(
                                            TKeys.Cloce.translate(context),
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey,

                                            ),
                                          ),
                                        )
                                    ),

                                  ],

                                ),
                              );
                            },
                            child: Text(TKeys.YoungPeople.translate(context),style: TextStyle(color: Colors.black),),
                            style:  ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.teal), // Set background color
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Set text color
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold), // Set text style
                              ),
                              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Set padding
                              ),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0), // Set border radius
                                ),
                              ),
                              elevation: MaterialStateProperty.all<double>(4.0), // Set elevation
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                  actions: [

                    Center(
                        child: TextButton(
                          onPressed: () {

                            Navigator.pop(context);

                          },

                          child: Text(
                            TKeys.Cloce.translate(context),
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,

                            ),
                          ),
                        )
                    ),

                  ],

                ),
              );
            } ,
            child: Text(TKeys.Pneumonia.translate(context) ,style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold ,fontSize: 20),)
        ),

      ],
    );
  }
}