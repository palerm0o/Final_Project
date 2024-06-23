import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Localization/t_key.dart';
import '../Screens/HomeScreens/NavBarScreen.dart';



class LoadingScreen2 extends StatefulWidget {
  @override
  _LoadingScreen2State createState() => _LoadingScreen2State();
}


class _LoadingScreen2State extends State<LoadingScreen2> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay for loading purposes
    Future.delayed(Duration(seconds: 2), () {
      // Navigate to the next screen after loading
      Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => NavBarScreen()),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Container(
          // color: Colors.teal,
          width: double.infinity,
          height: double.infinity,

          decoration: BoxDecoration( image: DecorationImage(
              image: AssetImage('assets/w.jpg'),
              fit: BoxFit.cover ),),

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                CircularProgressIndicator(color: Colors.blueGrey),
                SizedBox(height: 15 ,),
                Text(TKeys.Loading.translate(context),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
              ],
            ),
          ),
        )

    );
  }
}

