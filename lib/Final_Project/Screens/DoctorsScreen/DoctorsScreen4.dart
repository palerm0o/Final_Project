import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Widgets/Cards/Doctors/FloatActionButton.dart';

class DoctorsScreen4 extends  StatefulWidget {
  const DoctorsScreen4({super.key});

  @override
  State<DoctorsScreen4> createState() => _DoctorsScreen4State();
}

class _DoctorsScreen4State extends State<DoctorsScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage('assets/w3.jpeg'),
          fit: BoxFit.fill ,
        )),

        child: SingleChildScrollView(

          child: Column(
            children: [
              SizedBox(height: 50,),
              Row(
                children:
                [
                  IconButton( icon: Icon(Icons.arrow_back) ,color: Colors.teal ,onPressed: (){ Navigator.pop(context) ;}),
                  SizedBox(width: 60,),
                  Center(child: Text(' Lung Opacity Doctors ' ,style: TextStyle(color: Colors.teal ,fontSize: 20 ,fontWeight: FontWeight.bold),))
                ],
              ),
              Center(
                child: Column(

                  children:
                  [
                    Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [

                        SizedBox(width: 10,),
                        Container(

                          width:  170,
                          height: 250 ,


                          decoration: BoxDecoration(
                            color: Colors.black54 ,
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.blueGrey ,
                            //     spreadRadius: 3,
                            //     blurRadius: 2,
                            //     offset: Offset(0,3),
                            //   ),
                            // ],
                          ),
                          child: Column(
                            children:
                            [
                              SizedBox(height: 20 ,),
                              Text(' D\/ Ahmed Mohamed' ,
                                style:TextStyle(fontWeight: FontWeight.bold , fontSize: 15,color: Colors.teal) ,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  thickness: 2.5,
                                  height: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 15,),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [


                                    Icon(Icons.phone ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('01000000000' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.location_on_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('6 October City' , style: TextStyle(color: Colors.white,),),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.email_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('AM12@gmail.com' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),



                            ],
                          ),



                        ),
                        SizedBox(width: 10,),
                        Container(

                          width:  170,
                          height: 250 ,


                          decoration: BoxDecoration(
                            color: Colors.black54 ,
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.blueGrey ,
                            //     spreadRadius: 3,
                            //     blurRadius: 2,
                            //     offset: Offset(0,3),
                            //   ),
                            // ],
                          ),
                          child: Column(
                            children:
                            [
                              SizedBox(height: 20 ,),
                              Text(' D\/ Ahmed Mohamed' ,
                                style:TextStyle(fontWeight: FontWeight.bold , fontSize: 15,color: Colors.teal) ,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  thickness: 2.5,
                                  height: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 15,),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [


                                    Icon(Icons.phone ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('01000000000' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.location_on_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('6 October City' , style: TextStyle(color: Colors.white,),),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.email_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('AM12@gmail.com' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),



                            ],
                          ),



                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [

                        SizedBox(width: 10,),
                        Container(

                          width:  170,
                          height: 250 ,


                          decoration: BoxDecoration(
                            color: Colors.black54 ,
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.blueGrey ,
                            //     spreadRadius: 3,
                            //     blurRadius: 2,
                            //     offset: Offset(0,3),
                            //   ),
                            // ],
                          ),
                          child: Column(
                            children:
                            [
                              SizedBox(height: 20 ,),
                              Text(' D\/ Ahmed Mohamed' ,
                                style:TextStyle(fontWeight: FontWeight.bold , fontSize: 15,color: Colors.teal) ,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  thickness: 2.5,
                                  height: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 15,),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [


                                    Icon(Icons.phone ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('01000000000' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.location_on_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('6 October City' , style: TextStyle(color: Colors.white,),),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.email_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('AM12@gmail.com' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),



                            ],
                          ),



                        ),
                        SizedBox(width: 10,),
                        Container(

                          width:  170,
                          height: 250 ,


                          decoration: BoxDecoration(
                            color: Colors.black54 ,
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.blueGrey ,
                            //     spreadRadius: 3,
                            //     blurRadius: 2,
                            //     offset: Offset(0,3),
                            //   ),
                            // ],
                          ),
                          child: Column(
                            children:
                            [
                              SizedBox(height: 20 ,),
                              Text(' D\/ Ahmed Mohamed' ,
                                style:TextStyle(fontWeight: FontWeight.bold , fontSize: 15,color: Colors.teal) ,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  thickness: 2.5,
                                  height: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 15,),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [


                                    Icon(Icons.phone ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('01000000000' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.location_on_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('6 October City' , style: TextStyle(color: Colors.white,),),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.email_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('AM12@gmail.com' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),



                            ],
                          ),



                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [

                        SizedBox(width: 10,),
                        Container(

                          width:  170,
                          height: 250 ,


                          decoration: BoxDecoration(
                            color: Colors.black54 ,
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.blueGrey ,
                            //     spreadRadius: 3,
                            //     blurRadius: 2,
                            //     offset: Offset(0,3),
                            //   ),
                            // ],
                          ),
                          child: Column(
                            children:
                            [
                              SizedBox(height: 20 ,),
                              Text(' D\/ Ahmed Mohamed' ,
                                style:TextStyle(fontWeight: FontWeight.bold , fontSize: 15,color: Colors.teal) ,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  thickness: 2.5,
                                  height: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 15,),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [


                                    Icon(Icons.phone ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('01000000000' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.location_on_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('6 October City' , style: TextStyle(color: Colors.white,),),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.email_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('AM12@gmail.com' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),



                            ],
                          ),



                        ),
                        SizedBox(width: 10,),
                        Container(

                          width:  170,
                          height: 250 ,


                          decoration: BoxDecoration(
                            color: Colors.black54 ,
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.blueGrey ,
                            //     spreadRadius: 3,
                            //     blurRadius: 2,
                            //     offset: Offset(0,3),
                            //   ),
                            // ],
                          ),
                          child: Column(
                            children:
                            [
                              SizedBox(height: 20 ,),
                              Text(' D\/ Ahmed Mohamed' ,
                                style:TextStyle(fontWeight: FontWeight.bold , fontSize: 15,color: Colors.teal) ,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  thickness: 2.5,
                                  height: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 15,),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [


                                    Icon(Icons.phone ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('01000000000' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.location_on_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('6 October City' , style: TextStyle(color: Colors.white,),),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.email_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('AM12@gmail.com' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),



                            ],
                          ),



                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [

                        SizedBox(width: 10,),
                        Container(

                          width:  170,
                          height: 250 ,


                          decoration: BoxDecoration(
                            color: Colors.black54 ,
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.blueGrey ,
                            //     spreadRadius: 3,
                            //     blurRadius: 2,
                            //     offset: Offset(0,3),
                            //   ),
                            // ],
                          ),
                          child: Column(
                            children:
                            [
                              SizedBox(height: 20 ,),
                              Text(' D\/ Ahmed Mohamed' ,
                                style:TextStyle(fontWeight: FontWeight.bold , fontSize: 15,color: Colors.teal) ,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  thickness: 2.5,
                                  height: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 15,),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [


                                    Icon(Icons.phone ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('01000000000' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.location_on_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('6 October City' , style: TextStyle(color: Colors.white,),),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.email_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('AM12@gmail.com' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),



                            ],
                          ),



                        ),
                        SizedBox(width: 10,),
                        Container(

                          width:  170,
                          height: 250 ,


                          decoration: BoxDecoration(
                            color: Colors.black54 ,
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.blueGrey ,
                            //     spreadRadius: 3,
                            //     blurRadius: 2,
                            //     offset: Offset(0,3),
                            //   ),
                            // ],
                          ),
                          child: Column(
                            children:
                            [
                              SizedBox(height: 20 ,),
                              Text(' D\/ Ahmed Mohamed' ,
                                style:TextStyle(fontWeight: FontWeight.bold , fontSize: 15,color: Colors.teal) ,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  thickness: 2.5,
                                  height: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 15,),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [


                                    Icon(Icons.phone ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('01000000000' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.location_on_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('6 October City' , style: TextStyle(color: Colors.white,),),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.email_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('AM12@gmail.com' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),



                            ],
                          ),



                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [

                        SizedBox(width: 10,),
                        Container(

                          width:  170,
                          height: 250 ,


                          decoration: BoxDecoration(
                            color: Colors.black54 ,
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.blueGrey ,
                            //     spreadRadius: 3,
                            //     blurRadius: 2,
                            //     offset: Offset(0,3),
                            //   ),
                            // ],
                          ),
                          child: Column(
                            children:
                            [
                              SizedBox(height: 20 ,),
                              Text(' D\/ Ahmed Mohamed' ,
                                style:TextStyle(fontWeight: FontWeight.bold , fontSize: 15,color: Colors.teal) ,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  thickness: 2.5,
                                  height: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 15,),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [


                                    Icon(Icons.phone ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('01000000000' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.location_on_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('6 October City' , style: TextStyle(color: Colors.white,),),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.email_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('AM12@gmail.com' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),



                            ],
                          ),



                        ),
                        SizedBox(width: 10,),
                        Container(

                          width:  170,
                          height: 250 ,


                          decoration: BoxDecoration(
                            color: Colors.black54 ,
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.blueGrey ,
                            //     spreadRadius: 3,
                            //     blurRadius: 2,
                            //     offset: Offset(0,3),
                            //   ),
                            // ],
                          ),
                          child: Column(
                            children:
                            [
                              SizedBox(height: 20 ,),
                              Text(' D\/ Ahmed Mohamed' ,
                                style:TextStyle(fontWeight: FontWeight.bold , fontSize: 15,color: Colors.teal) ,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  thickness: 2.5,
                                  height: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 15,),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [


                                    Icon(Icons.phone ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('01000000000' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.location_on_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('6 October City' , style: TextStyle(color: Colors.white,),),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.email_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('AM12@gmail.com' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),



                            ],
                          ),



                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [

                        SizedBox(width: 10,),
                        Container(

                          width:  170,
                          height: 250 ,


                          decoration: BoxDecoration(
                            color: Colors.black54 ,
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.blueGrey ,
                            //     spreadRadius: 3,
                            //     blurRadius: 2,
                            //     offset: Offset(0,3),
                            //   ),
                            // ],
                          ),
                          child: Column(
                            children:
                            [
                              SizedBox(height: 20 ,),
                              Text(' D\/ Ahmed Mohamed' ,
                                style:TextStyle(fontWeight: FontWeight.bold , fontSize: 15,color: Colors.teal) ,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  thickness: 2.5,
                                  height: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 15,),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [


                                    Icon(Icons.phone ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('01000000000' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.location_on_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('6 October City' , style: TextStyle(color: Colors.white,),),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.email_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('AM12@gmail.com' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),



                            ],
                          ),



                        ),
                        SizedBox(width: 10,),
                        Container(

                          width:  170,
                          height: 250 ,


                          decoration: BoxDecoration(
                            color: Colors.black54 ,
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.blueGrey ,
                            //     spreadRadius: 3,
                            //     blurRadius: 2,
                            //     offset: Offset(0,3),
                            //   ),
                            // ],
                          ),
                          child: Column(
                            children:
                            [
                              SizedBox(height: 20 ,),
                              Text(' D\/ Ahmed Mohamed' ,
                                style:TextStyle(fontWeight: FontWeight.bold , fontSize: 15,color: Colors.teal) ,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  thickness: 2.5,
                                  height: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 15,),

                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [


                                    Icon(Icons.phone ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('01000000000' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.location_on_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('6 October City' , style: TextStyle(color: Colors.white,),),

                                  ],
                                ),
                              ),
                              SizedBox(height: 0 ,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children:
                                  [

                                    Icon(Icons.email_outlined ,color: Colors.teal, ),
                                    SizedBox(width: 5 ,),
                                    Text('AM12@gmail.com' ,style: TextStyle(color: Colors.white,), ),

                                  ],
                                ),
                              ),



                            ],
                          ),



                        ),
                      ],
                    ),



                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatActionButton(),
    );
  }
}
