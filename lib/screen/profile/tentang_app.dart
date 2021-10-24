import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:presensi_panda/constant.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Tentang Aplikasi"),
        backgroundColor: blueColor,
      ),
      body: SafeArea(
        child: Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Container(
              height: size.height / 3,
              width: size.width,
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and.",
                style: GoogleFonts.poppins(
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
