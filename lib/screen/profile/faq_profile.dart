import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:presensi_panda/constant.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hubungi Kami"),
        backgroundColor: blueColor,
      ),
      body: SafeArea(
        child: Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Container(
                height: size.height / 2,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Kunjungi Social Media Kami : ",
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/svg/social_browser.svg"),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "www.panda.id",
                          style: GoogleFonts.poppins(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/svg/social_instagram.svg"),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "teknologi.panda",
                          style: GoogleFonts.poppins(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/svg/social_facebook.svg"),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "PuskoMedia.ID",
                          style: GoogleFonts.poppins(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
