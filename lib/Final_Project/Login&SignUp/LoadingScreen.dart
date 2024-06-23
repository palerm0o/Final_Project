import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Localization/t_key.dart';
import 'LoginScreen.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}



class _LoadingScreenState extends State<LoadingScreen> {
  @override

   void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => LoginScreen()),);
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
            image: AssetImage('assets/n1.jpg'),
            fit: BoxFit.cover ),),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              SizedBox(height:200),
              Image.asset('assets/images/IMg1.jpg',width: 100),

              SizedBox(height:50),
              Text(' Chest X-ray ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25 , color: Colors.teal)),
              SizedBox(height:200),
              CircularProgressIndicator(color: Colors.teal),
              SizedBox(height:15),
              Text(TKeys.Loading.translate(context),style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold , color: Colors.black)),

            ],
          ),
        )

    );
  }
}

