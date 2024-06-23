import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class Text_Password_Field extends  StatefulWidget {
//
//   String? labelTextt;
//
//   Text_Password_Field({ required this.labelTextt });
//
//
//
//   @override
//   State<Text_Password_Field> createState() => _Text_Password_FieldState();
// }
//
// class _Text_Password_FieldState extends State<Text_Password_Field> {
//
//
//   var passVisabil = true ;
//   String? labelTextt;
//   Function(String)? onChange;
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return TextFormField(
//       validator: (data)
//       {
//         if (data!.isEmpty )
//           {
//             return 'Password is Required';
//           }
//       },
//       decoration: InputDecoration(
//         labelText: widget.labelTextt,
//         labelStyle: TextStyle(
//           fontFamily: 'Arial',
//           fontSize: 18,
//           fontWeight: FontWeight.bold,
//           color: Colors.grey,
//         ),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(30),
//           borderSide: BorderSide(
//               color: Colors.teal
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(30),
//           borderSide: BorderSide(
//               color: Colors.teal
//           ),
//         ),
//         prefixIcon: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Icon( Icons.lock, color: Colors.teal,),
//         ),
//         suffixIcon: Padding(
//           padding: const EdgeInsets.only(right: 10),
//           child: IconButton(
//             onPressed: () {setState( ( ) { passVisabil=!passVisabil ;} ) ; } ,
//             icon: Icon(passVisabil? Icons.visibility : Icons.visibility_off),
//             //  color: Colors.cyan,
//           ),
//         ),
//       ),
//       keyboardType: TextInputType.phone,
//       obscureText: passVisabil ,
//
//     );
//   }
// }

class Text_Password_Field extends  StatefulWidget {
  Text_Password_Field({ required this.labelTextt , required this.onChange });

   String? labelTextt;
   Function(String)? onChange;


  @override
  State<Text_Password_Field> createState() => _Text_Password_FieldState();
}

class _Text_Password_FieldState extends State<Text_Password_Field> {
   var passVisabil = true ;
   AutovalidateMode autovalidateMode =AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator: (data)
      {
        if (data!.isEmpty )
        {
          return 'Password is Required';
        }else
        {
          autovalidateMode = AutovalidateMode.always;
          setState(() {});
        }
      },
      decoration: InputDecoration(
        labelText: widget.labelTextt,
        labelStyle: TextStyle(
          fontFamily: 'Arial',
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
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
        prefixIcon: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Icon( Icons.lock, color: Colors.teal,),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: () {setState( ( ) { passVisabil=!passVisabil ;} ) ; } ,
            icon: Icon(passVisabil? Icons.visibility : Icons.visibility_off),
            //  color: Colors.cyan,
          ),

        ),
      ),
      keyboardType: TextInputType.phone,
      obscureText: passVisabil ,
      onChanged: widget.onChange,

    );
  }
}
