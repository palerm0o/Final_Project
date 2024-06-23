import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../Localization/t_key.dart';

class Tuberculosis extends StatelessWidget {
  const Tuberculosis({
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
                      Text(TKeys.Tuberculosis.translate(context),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.teal),),
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

                    child: Column(
                      children:
                      [

                        // Padding(
                        //   padding: const EdgeInsets.only(bottom: 15),
                        //   child: Divider(
                        //     thickness: 2.5,
                        //     height: 15,
                        //   ),
                        // ),
                        Text(TKeys.T1.translate(context),
                          style: TextStyle(fontSize: 15,color: Colors.teal),

                        ),
                        SizedBox(height: 10 ,),



                        Row(
                          children: [
                            Icon(Icons.ac_unit,color: Colors.teal),
                            SizedBox(width: 5,),
                            Text(TKeys.T2.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            SizedBox(width: 10,),
                            Icon(Icons.ac_unit,color: Colors.teal),
                            SizedBox(width: 5,),
                            Text(TKeys.T3.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          ],
                        ),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.T4.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              SizedBox(width: 10,),
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.T5.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.T6.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.white),),
                              SizedBox(width: 10,),
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.T7.translate(context),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.T8.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.white),),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Icon(Icons.ac_unit ,color: Colors.teal,),
                              SizedBox(width: 5,),
                              Text(TKeys.T9.translate(context),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
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
            } ,
            child: Text(TKeys.Tuberculosis.translate(context) ,style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold,fontSize: 20),)
        ),

      ],
    );
  }
}