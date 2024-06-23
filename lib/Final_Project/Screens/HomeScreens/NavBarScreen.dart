import 'package:flutter/material.dart';
import '../../../Localization/t_key.dart';
import '../../Camera/CameraScreen.dart';
import '../../Login&SignUp/SignUpScreen1.dart';
import 'HomeScreen.dart';

import 'ProfileScreen.dart';


class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override

  State<NavBarScreen> createState() => _MyButtomNavBarState();
}

class _MyButtomNavBarState extends State<NavBarScreen> {

  int myCurrentIndex = 0;
  List pages = const

  [
    HomeScreen(),

    ProfileScreen(),

  ];

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Container(


        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration( boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 25,
              offset: const Offset(8, 20)
          ) ,
        ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: ClipRRect(

            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(

               backgroundColor: Colors.white24,
                selectedItemColor: Colors.teal,
                unselectedItemColor: Colors.black,
                currentIndex: myCurrentIndex,
                onTap: (index) {
                  setState(() {
                    myCurrentIndex = index;
                  });
                },
                items:
                [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label:TKeys.Home.translate(context), ),
                  BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: TKeys.Profile.translate(context)),
                ]
            ),
          ),
        ),

      ),
      body: pages[myCurrentIndex],

    );
  }
}


