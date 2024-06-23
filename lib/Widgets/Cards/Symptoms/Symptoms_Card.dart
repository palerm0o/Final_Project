import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Localization/t_key.dart';
import 'Covid.dart';
import 'Pneumonia.dart';
import 'Tuberculosis.dart';
import 'Lung_Opacity.dart';

class Symptoms_Card extends StatelessWidget {
  const Symptoms_Card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      width:  double.infinity,
      height: 270 ,

      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.white10,
            spreadRadius: 3,
            blurRadius: 2,
            offset: Offset(0,3),
          ),
        ],
      ),
      child: Column(
        children:
        [

          SizedBox(height: 10 ,),
          Text( TKeys.Symptoms.translate(context),
            style:TextStyle(fontWeight: FontWeight.bold , fontSize: 25,color: Colors.teal) ,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20 ,right: 20),
            child: Divider(
              thickness: 2.5,
              height: 15,
            ),
          ),
          SizedBox(height: 10,),


          Tuberculosis(),
          Covid19(),
          Lung_Opacity(),
          pneumonia(),


        ],
      ),

    );
  }
}