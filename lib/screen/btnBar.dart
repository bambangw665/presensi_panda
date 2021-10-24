import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        backgroundColor: btnNavColor,
        currentIndex: providered.currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false, 
        onTap: (index) {
          providered.currentIndex = index;
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/home_unactve.svg", height: 25,),
            activeIcon: SvgPicture.asset("assets/svg/home_actve.svg",  height: 25,),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/profile_unactive.svg", height: 25,),
            activeIcon: SvgPicture.asset("assets/svg/profile_active.svg",  height: 25,),
            title: new Text(''),
          ),
        ],
      ),
    );
  }
}
