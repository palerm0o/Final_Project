import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Localization/app_localizations.dart';
import '../../../Localization/t_key.dart';
import '../../Login&SignUp/LoginScreen.dart';
import '../ProfilesScreen/EditProfile.dart';
import '../ProfilesScreen/InformationScreen.dart';
import '../ProfilesScreen/Settings.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  final localizationController = Get.put(LocalizationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration( image: DecorationImage(
            image: AssetImage('assets/w.jpg'),
            fit: BoxFit.cover ),),

        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 60),

            const CircleAvatar(
              radius: 60,
              // backgroundImage: AssetImage("assets/images/1.png"),
                               ),
            const SizedBox( height: 20, ),
             Text(
              TKeys.Name.translate(context),
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold , color: Colors.white),
            ),


            SizedBox(height: 45 ,),

            Padding(
              padding: EdgeInsets.all(18.0),
              child: Container(

               decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(20) ,
               ),
               width: 400,
               height: 330 ,
                 child: Column(
                   children:
                   [

                     SizedBox(height: 30,),
                     GestureDetector(
                       onTap:  () { Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));},
                       child: Row(
                         children:
                         [

                           SizedBox(width: 20,),
                           const Icon(Icons.account_box_outlined,color: Colors.teal,),
                           SizedBox(width: 30,),
                           Icon(Icons.arrow_forward_ios,color: Colors.white,),
                           SizedBox(width: 10,),
                           Text(TKeys.EditProfile.translate(context) ,style: TextStyle(color: Colors.white),),




                         ],
                       ),
                     ),
                     SizedBox(height: 10,),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Divider(
                         thickness: 2.5,
                         height: 15,
                       ),
                     ),
                     SizedBox(height: 10,),
                     GestureDetector(
                       onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => InformationScreen()));},
                       child: Row(
                         children:
                         [

                           SizedBox(width: 20,),
                           Icon(Icons.account_circle_outlined,color: Colors.teal,),
                           SizedBox(width: 30,),
                           Icon(Icons.arrow_forward_ios,color: Colors.white,),
                           SizedBox(width: 10,),
                           Text(TKeys.AccountInformation.translate(context) ,style: TextStyle(color: Colors.white),),


                         ],
                       ),
                     ),
                     SizedBox(height: 10,),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Divider(
                         thickness: 2.5,
                         height: 15,
                       ),
                     ),
                     SizedBox(height: 10,),




                     GestureDetector(
                         onTap:   () { Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));} ,
                       child: Row(
                         children:
                         [

                           SizedBox(width: 20,),
                           Icon(Icons.settings,color: Colors.teal,),
                           SizedBox(width: 30,),
                           Icon(Icons.arrow_forward_ios,color: Colors.white,),
                           SizedBox(width: 0,),
                           TextButton(
                             onPressed:() {
                               localizationController.toggleLanguage();
                             },
                             child: Text(TKeys.Changelanguge.translate(context),
                               style: TextStyle(color: Colors.white),
                             ),
                           ),
                           // Text(TKeys.Changelanguge.translate(context) ,style: TextStyle(color: Colors.white),),

                         ],
                       ),
                     ),

                     SizedBox(height: 0,),
                     // Padding(
                     //   padding: const EdgeInsets.all(8.0),
                     //   child: Divider(
                     //     thickness: 2.5,
                     //     height: 15,
                     //   ),
                     // ),
                     // SizedBox(height: 10,),
                     //
                     //
                     // GestureDetector(
                     //    onTap:() { Navigator.push(context, MaterialPageRoute(builder: (context) => LoadingScreen2()));},
                     //   child: Row(
                     //     children:
                     //     [
                     //
                     //       SizedBox(width: 20,),
                     //       Icon(Icons.live_help_outlined,color: Colors.teal,),
                     //       SizedBox(width: 30,),
                     //       Icon(Icons.arrow_forward_ios,color: Colors.white,),
                     //       SizedBox(width: 10,),
                     //       Text(TKeys.Hellp.translate(context),style: TextStyle(color: Colors.white),),
                     //
                     //     ],
                     //   ),
                     // ),


                     SizedBox(height: 0,),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Divider(
                         thickness: 2.5,
                         height: 15,
                       ),
                     ),
                     SizedBox(height: 10,),
                     GestureDetector(
                       onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen())); },
                       child: Row(
                         children:
                         [

                           SizedBox(width: 20,),
                           Icon(Icons.logout,color: Colors.teal,),
                           SizedBox(width: 30,),
                           Icon(Icons.arrow_forward_ios,color: Colors.white,),
                           SizedBox(width: 10,),
                           Text(TKeys.LogOut.translate(context) ,style: TextStyle(color: Colors.red),),

                         ],
                       ),
                     ),


                   ],
                 ),

                         ),
            ),


          ],

        ),
      ),
    );}
}