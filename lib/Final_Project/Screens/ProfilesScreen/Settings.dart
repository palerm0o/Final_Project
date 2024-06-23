import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/Widgets/Text_Field/Custom_Button.dart';
import '../../../Localization/app_localizations.dart';
import '../../../Localization/t_key.dart';
import '../../../main.dart';


class Settings extends  StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  final localizationController = Get.put(LocalizationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/w2.webp'),
              fit: BoxFit.fill,
            )),

        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children:
            [

              SizedBox(height: 55,),
              Row(
                children: [
                  IconButton( icon: Icon(Icons.arrow_back) ,color: Colors.teal ,onPressed: (){ Navigator.pop(context) ;}),
                  SizedBox(width: 10,),
                  Text(TKeys.Setting.translate(context),style: TextStyle(color: Colors.teal , fontWeight: FontWeight.bold,fontSize: 20),),


                ],
              ),
              SizedBox(height: 80,),
              Row(
                children:
                [

                  Text(TKeys.Language.translate(context),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.teal),),
                  SizedBox(width: 5,),
                  Text(':',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.teal),),
                  SizedBox(width: 5,),
                  TextButton(
                      onPressed:() {
                        localizationController.toggleLanguage();
                      },
                      child: Text(TKeys.Changelanguge.translate(context),
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  ),
                ],
              ),
              CustomButton(
                  Title:  TKeys.Changelanguge.translate(context),
                  onTap: () {
                    localizationController.toggleLanguage();
                  },
              ),
              ElevatedButton(
                  onPressed: () {
                    localizationController.toggleLanguage();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      TKeys.Changelanguge.translate(context),
                        // TKeys.changeLanguage.translate(context),
                        // style: const TextStyle(fontSize: 18,color: Colors.teal)
                       ),
                  )),

            ],
          ),
        ),
      ),
    );
  }


}
