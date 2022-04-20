import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:presensi_panda/screen/profile/faq_profile.dart';
import 'package:presensi_panda/screen/profile/tentang_app.dart';
import 'package:presensi_panda/screen/profile/ubah_password.dart';
import 'package:presensi_panda/widget/profileScreen/row_profile.dart';
import '../constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  // const ProfileScreen({ Key? key }) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      "assets/png/picture_profile.png",
                      height: size.height / 10,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Bambang W",
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: whiteColor,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "bambangw665@protonmail.com",
                      style: GoogleFonts.poppins(
                        color: whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/svg/profile_name.svg",
                                height: 35,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Bambang Wijiyatmoko",
                                style: GoogleFonts.poppins(
                                    fontSize: 13, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                            height: 0,
                            thickness: 2,
                            color: Colors.grey[100],
                            endIndent: 20
                            ),
                        Expanded(
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/svg/profile_email.svg",
                                height: 35,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "bambangw665@protonmail.com",
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                            height: 0,
                            thickness: 2,
                            color: Colors.grey[100],
                            endIndent: 20
                            ),
                        row_profile_details_widgets(
                          svgImg: "assets/svg/profile_password.svg",
                          nama: "Ubah Password",
                          linkTujuan: UbahPassword(),
                        ),
                        Divider(
                            height: 0,
                            thickness: 2,
                            color: Colors.grey[100],
                            endIndent: 20
                            ),
                        row_profile_details_widgets(
                          svgImg: "assets/svg/profile_tentangApp.svg",
                          nama: "Tentang Aplikasi",
                          linkTujuan: AboutApp(),
                        ),
                        Divider(
                            height: 0,
                            thickness: 2,
                            color: Colors.grey[100],
                            endIndent: 20
                            ),
                        row_profile_details_widgets(
                          svgImg: "assets/svg/profile_faq.svg",
                          nama: "FAQ",
                          linkTujuan: FaqScreen(),
                        ),
                        
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    height: 50,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                    child: Center(
                      child: Text(
                        "Sign Out",
                        style: GoogleFonts.poppins(
                            color: whiteColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
