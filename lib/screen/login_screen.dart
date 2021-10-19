import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> { 
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: blueColor, 
      body: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            width: size.width,
            height: size.height * 0.2,
            color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("LOGIN", style: GoogleFonts.poppins(color: whiteColor, fontWeight: FontWeight.bold, fontSize: 35),),
                Text("Masukan akun anda", style: TextStyle(fontSize: 15, color: whiteColor),)
              ],
            ),
          ),
          Container(
            width: size.width,
            height: size.height,
            color: Colors.grey,
            
          ),
        ],
      ),
    );
  }
}