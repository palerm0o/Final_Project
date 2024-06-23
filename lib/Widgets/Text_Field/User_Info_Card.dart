import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserI_Info_Card extends StatelessWidget {
   UserI_Info_Card({  super.key, required this.Text1, required this.UserText, });

  final String Text1 ;
  final String UserText ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      [
        Text(Text1 , style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal,fontSize: 20),),
        SizedBox(width: 5,),
        Text( ':' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.teal),),
        SizedBox(width: 10 ,),
        Text(UserText ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
      ],
    );
  }
}