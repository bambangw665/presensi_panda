import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:presensi_panda/screen/homePage.dart';
import '../constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "LOGIN",
                      style: GoogleFonts.poppins(
                          color: whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text(
                      "Masukan akun anda",
                      style: TextStyle(fontSize: 13, color: whiteColor),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              flex: 8,
              child: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  color: whiteColor,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height / 15,
                      ),
                      Text(
                        "Username",
                        style: GoogleFonts.poppins(
                          color: textGreyColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: "mail.protonmail.com",
                          fillColor: textGreyColor,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // SizedBox(height: size.height / 11,),
                      Text(
                        "Password",
                        style: GoogleFonts.poppins(
                          color: textGreyColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                          fillColor: textGreyColor,
                          suffix: Icon(
                            Icons.lock,
                            color: textGreyColor,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: "***********",
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: size.width,
                        height: 50,
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                          },
                          child: Text(
                            "Login",
                            style: GoogleFonts.poppins(
                              color: whiteColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: btnBlueColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
