import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../Localization/t_key.dart';

class Lung_Opacity extends StatelessWidget {
  const Lung_Opacity({
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
                      Text(TKeys.LungOpacity.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.teal),),
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

                        Text(TKeys.L1.translate(context),
                          style: TextStyle(fontSize: 15,color: Colors.teal),

                        ),
                        SizedBox(height: 10 ,),



                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(

                            children: [
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.L2.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),

                            ],
                          ),
                        ),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.L3.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.white),),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(

                            children: [
                              Icon(Icons.ac_unit ,color: Colors.teal,),
                              SizedBox(width: 5,),
                              Text(TKeys.L4.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.L5.translate(context),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              SizedBox(width: 10,),
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.L6.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),

                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.L7.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              SizedBox(width: 10,),
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.L8.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),

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
            child: Text(TKeys.LungOpacity.translate(context),style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold,fontSize: 20),)
        ),

      ],
    );
  }
}