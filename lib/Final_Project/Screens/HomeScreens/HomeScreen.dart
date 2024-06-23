import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../Localization/t_key.dart';
import '../../../Widgets/Cards/Doctors/Doctor_Card.dart';
import '../../../Widgets/Cards/Symptoms/Symptoms_Card.dart';
import '../../Camera/galleryScreen.dart';


class HomeScreen extends  StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState( );
}

class _HomeScreenState extends State<HomeScreen> {

  List<File> selectedImages = [];
  final picker = ImagePicker();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        height: double.infinity,
        width:  double.infinity,
        decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage('assets/w.jpg'),
          fit: BoxFit.fill ,
        )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children:
            [

              SizedBox(height: 50,),
              Doctor_Card(),
              SizedBox(height: 15,),
              Symptoms_Card(),
              SizedBox(height: 14,),

              Container(
                height: 38,
                width: 180,
                child: ElevatedButton(


                  style:  ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.teal) ,

                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),),
                    ),


                  ),

                  onPressed: () async {
                    await availableCameras().then((value) => Navigator.push( context, MaterialPageRoute(builder: (context) => galleryScreen() ,)),);
                  },

                  // onPressed: () {
                  //
                  //    showDialog(
                  //     context: context,
                  //       builder: (context) => AlertDialog(
                  //         alignment: Alignment.center,
                  //
                  //
                  //       backgroundColor: Colors.black45 ,
                  //       content:  Container(
                  //         height: 170,
                  //         child: Column(
                  //           children: [
                  //             Text('Seclet Image' ,style: TextStyle(fontSize: 25,color: Colors.teal),),
                  //             Divider(
                  //               color: Colors.white60,
                  //               thickness: 2.5 ,
                  //               height: 15 ,
                  //             ),
                  //             SizedBox(height : 15,),
                  //             Expanded(
                  //               child: ElevatedButton(
                  //
                  //                 onPressed: () async {
                  //                   await availableCameras().then((value) => Navigator.push( context, MaterialPageRoute(builder: (context) => galleryScreen(),)),);
                  //                 },
                  //                 child: const Text('from Gallery'),
                  //                 style:  ButtonStyle(
                  //                   backgroundColor: MaterialStateProperty.all<Color>(Colors.teal), // Set background color
                  //                   foregroundColor: MaterialStateProperty.all<Color>(Colors.black), // Set text color
                  //                   textStyle: MaterialStateProperty.all<TextStyle>(
                  //                     TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold), // Set text style
                  //                   ),
                  //                   padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  //                     EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Set padding
                  //                   ),
                  //                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  //                     RoundedRectangleBorder(
                  //                       borderRadius: BorderRadius.circular(15.0), // Set border radius
                  //                     ),
                  //                   ),
                  //                   elevation: MaterialStateProperty.all<double>(4.0), // Set elevation
                  //                 ),
                  //
                  //               ),
                  //             ),
                  //             Row(
                  //               children:
                  //               [
                  //                 Expanded(
                  //                   child: ElevatedButton(  onPressed: () async { await availableCameras().then((value) => Navigator.push( context, MaterialPageRoute(builder: (context) => CameraScreen(cameras: value,),)),);},
                  //                     child: const Text('Open Camera'),
                  //                     style:  ButtonStyle(
                  //                       backgroundColor: MaterialStateProperty.all<Color>(Colors.teal), // Set background color
                  //                       foregroundColor: MaterialStateProperty.all<Color>(Colors.black), // Set text color
                  //                       textStyle: MaterialStateProperty.all<TextStyle>(
                  //                         TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold), // Set text style
                  //                       ),
                  //                       padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  //                         EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Set padding
                  //                       ),
                  //                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  //                         RoundedRectangleBorder(
                  //                           borderRadius: BorderRadius.circular(15.0), // Set border radius
                  //                         ),
                  //                       ),
                  //                       elevation: MaterialStateProperty.all<double>(4.0), // Set elevation
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 SizedBox(width: 15,),
                  //                 Expanded(
                  //                   child: ElevatedButton(
                  //
                  //                     onPressed: () async {
                  //                       await availableCameras().then((value) => Navigator.push( context, MaterialPageRoute(builder: (context) => galleryScreen(),)),);
                  //                     },
                  //                     child: const Text('from Gallery'),
                  //                     style:  ButtonStyle(
                  //                       backgroundColor: MaterialStateProperty.all<Color>(Colors.teal), // Set background color
                  //                       foregroundColor: MaterialStateProperty.all<Color>(Colors.black), // Set text color
                  //                       textStyle: MaterialStateProperty.all<TextStyle>(
                  //                         TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold), // Set text style
                  //                       ),
                  //                       padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  //                         EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Set padding
                  //                       ),
                  //                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  //                         RoundedRectangleBorder(
                  //                           borderRadius: BorderRadius.circular(15.0), // Set border radius
                  //                         ),
                  //                       ),
                  //                       elevation: MaterialStateProperty.all<double>(4.0), // Set elevation
                  //                     ),
                  //
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //             SizedBox(height : 0,),
                  //             TextButton( onPressed: () { Navigator.pop(context);},
                  //               child: const Text("Close" ,style: TextStyle(color: Colors.grey),),
                  //
                  //             ),
                  //
                  //           ],
                  //         ),
                  //       ),
                  //
                  //
                  //     ),
                  //   );
                  // },

                  child: Text(
                    TKeys.SelectImage.translate(context),
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),
                  ),


                ),
              ),
            ],
          ),
        ),

      ),
    );

  }
}



