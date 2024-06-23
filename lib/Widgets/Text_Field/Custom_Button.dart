import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Final_Project/Login&SignUp/LoadingScreen2.dart';

class CustomButton extends StatelessWidget {
   CustomButton({required this.Title ,required this.onTap});


   String? Title ;
   VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        height: 45,
        width: 200,

        child: Center(
          child: Text( Title! ,
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,

          ),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.teal,

        ),
      ),
    );
  }
}
