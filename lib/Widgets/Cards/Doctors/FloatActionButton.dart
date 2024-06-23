import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Localization/t_key.dart';

class FloatActionButton extends StatelessWidget {
  const FloatActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed:()
      {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Center(child: Column(
              children: [
                Text('Add Doctor' ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.teal),),
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white12,
                          labelText:TKeys.Name.translate(context) ,
                          labelStyle: TextStyle(color: Colors.white),
                          hintText: TKeys.Name.translate(context) ,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.black), ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Icon(
                              color: Colors.teal,
                              Icons.drive_file_rename_outline,
                            ),
                          ),

                        ),
                        style: TextStyle(color: Colors.black , fontSize: 15,fontWeight: FontWeight.bold),
                        cursorColor: Colors.black,




                      ),
                    ),
                  ),
                  SizedBox(height: 10 ,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white12,
                          labelText: TKeys.Phone.translate(context) ,
                          labelStyle: TextStyle(color: Colors.white),
                          hintText: TKeys.Phone.translate(context) ,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.black), ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Icon(
                              color: Colors.teal,
                              Icons.phone,
                            ),
                          ),

                        ),
                        style: TextStyle(color: Colors.black , fontSize: 15,fontWeight: FontWeight.bold),
                        cursorColor: Colors.black,




                      ),
                    ),
                  ),
                  SizedBox(height: 10 ,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white12,
                          labelText: TKeys.Location.translate(context)  ,
                          labelStyle: TextStyle(color: Colors.white),
                          hintText: TKeys.Location.translate(context) ,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.black), ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Icon(
                              color: Colors.teal,
                              Icons.location_on_outlined,
                            ),
                          ),

                        ),
                        style: TextStyle(color: Colors.black , fontSize: 15,fontWeight: FontWeight.bold),
                        cursorColor: Colors.black,




                      ),
                    ),
                  ),
                  SizedBox(height: 10 ,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white12,
                          labelText: TKeys.Email.translate(context)  ,
                          labelStyle: TextStyle(color: Colors.white),
                          hintText: TKeys.Email.translate(context) ,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.black), ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Icon(
                              color: Colors.teal,
                              Icons.email_outlined,
                            ),
                          ),


                        ),
                        style: TextStyle(color: Colors.black , fontSize: 15,fontWeight: FontWeight.bold),
                        cursorColor: Colors.black,




                      ),
                    ),
                  ),

                ],
              ),
            ),
            actions: [

              Center(
                child: TextButton(

                  style:  ButtonStyle(
                    // backgroundColor: MaterialStateProperty.all<Color>(Colors.green) ,
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                    ),

                  ),
                  onPressed: () {

                    Navigator.pop(context);

                  },



                  child: Text(
                    TKeys.Submit.translate(context) ,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,

                    ),
                  ),


                ),
              ),

            ],

          ),
        );
      } ,
      child: Icon(Icons.add_circle , color: Colors.black),
      backgroundColor: Colors.teal,

    );
  }
}