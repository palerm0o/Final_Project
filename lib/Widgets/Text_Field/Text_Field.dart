import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Text_Field extends StatefulWidget {
   Text_Field({ required this.onChange ,required this.labelText , required this.Icoon});

  String? labelText;
  Icon? Icoon;
  Function(String)? onChange;

  @override
  State<Text_Field> createState() => _Text_FieldState();
}

class _Text_FieldState extends State<Text_Field> {
  TextEditingController? myController;

   AutovalidateMode autovalidateMode =AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data){
        if (data!.isEmpty)
          {
            return '${widget.labelText} is Required';
          }else
            {
              autovalidateMode = AutovalidateMode.always;
              setState(() {});
            }
      },
      onChanged: widget.onChange,

      controller: TextEditingController() ,
      decoration: InputDecoration(
        labelText:  widget.labelText ,
        labelStyle: TextStyle(
          fontFamily: 'Arial',
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),

        ),
        enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
              color: Colors.teal
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
              color: Colors.teal
          ),
        ),


        prefixIcon: widget.Icoon ,
        prefixIconColor: Colors.teal ,

      ),
      keyboardType: TextInputType.emailAddress,

    );
  }
}