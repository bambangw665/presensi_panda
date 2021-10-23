import 'package:flutter/material.dart';
import 'package:presensi_panda/constant.dart';
import 'package:presensi_panda/provider/btnbarProvider.dart';
import 'package:presensi_panda/screen/homePage.dart';
import 'package:presensi_panda/screen/login_screen.dart';
import 'package:presensi_panda/screen/profileScreen.dart';
import 'package:provider/provider.dart';

class BottomNavigationBarExample extends StatefulWidget {
  // const BottomNavigationBarExample({ Key? key }) : super(key: key);

  @override
  _BottomNavigationBarExampleState createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  var currentTab = [
    HomePage(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    var providered = Provider.of<BottomNavigationBarprovider>(context);
    return Scaffold(
      body: currentTab[providered.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: blueColor,
        currentIndex: providered.currentIndex,
        showSelectedLabels: false, // <-- HERE
        showUnselectedLabels: false, // <-- AND HERE
        onTap: (index) {
          providered.currentIndex = index;
        },
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home, color: Colors.white,),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text(''),
          ),
        ],
      ),
    );
  }
}
