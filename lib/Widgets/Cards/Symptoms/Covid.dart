import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../Localization/t_key.dart';

class Covid19 extends StatelessWidget {
  const Covid19({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      [
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
                      Text(TKeys.Covid.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.teal),),
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

                        Text(TKeys.C1.translate(context),
                          style: TextStyle(fontSize: 15,color: Colors.teal,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10 ,),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Icon(Icons.ac_unit,color: Colors.teal,),
                              SizedBox(width: 5,),
                              Text(TKeys.C2.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.ac_unit,color: Colors.teal,),
                            SizedBox(width: 5,),
                            Text(TKeys.C3.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            SizedBox(width: 10,),
                            Icon(Icons.ac_unit,color: Colors.teal),
                            SizedBox(width: 5,),
                            Text(TKeys.C4.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.C5.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              SizedBox(width: 50,),
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.C6.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.C7.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              SizedBox(width: 60,),
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.C8.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.C9.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              SizedBox(width: 15,),
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.C10.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.C11.translate(context),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              SizedBox(width: 42,),
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.C12.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.ac_unit,color: Colors.teal),
                            SizedBox(width: 5,),
                            Text(TKeys.C13.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            SizedBox(width: 40,),
                            Icon(Icons.ac_unit,color: Colors.teal),
                            SizedBox(width: 5,),
                            Text(TKeys.C14.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.C15.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              SizedBox(width: 22,),
                              Icon(Icons.ac_unit,color: Colors.teal),
                              SizedBox(width: 5,),
                              Text(TKeys.C16.translate(context) ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Icon(Icons.ac_unit,color: Colors.teal,),
                              SizedBox(width: 5,),
                              Text(TKeys.C17.translate(context) ,



                                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white), ),

                            ],
                          ),
                        ),
                        Text(TKeys.C18.translate(context) , style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)

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
            child: Text(TKeys.Covid.translate(context) ,style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold,fontSize: 20 ),)
        ),
      ],
    );
  }
}