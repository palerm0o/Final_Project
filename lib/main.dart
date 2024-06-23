
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';


import 'package:untitled/Final_Project/Login&SignUp/LoadingScreen.dart';


import 'Consts.dart';
import 'Final_Project/Screens/HomeScreens/NavBarScreen.dart';
import 'Final_Project/Screens/ProfilesScreen/Settings.dart';
import 'Localization/app_localizations.dart';





void main() async {

  await Hive.initFlutter();

  await Hive.openBox(KNotesBox);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

   final localizationController = Get.put(LocalizationController());

  @override

  Widget build(BuildContext context)
  {
     return

       GetBuilder<LocalizationController>(
         init: localizationController,
         builder: (LocalizationController controller){
           return MaterialApp(

             locale: controller.currentLanguage != ''
                 ? Locale(controller.currentLanguage, '')
                 : null,
             localeResolutionCallback: LocalizationService.localeResolutionCallBack,
             supportedLocales: LocalizationService.supportedLocales,
             localizationsDelegates: LocalizationService.localizationsDelegate,

             debugShowCheckedModeBanner: false,
             home:NavBarScreen(),
           );
         }
     );
  }



}
