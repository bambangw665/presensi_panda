import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class row_profile_details_widgets extends StatelessWidget {
  const row_profile_details_widgets({
    Key key,
    this.linkTujuan,
    @required this.svgImg,
    @required this.nama,
  }) : super(key: key);

  final String svgImg;
  final String nama;
  final Widget linkTujuan;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                svgImg,
                height: 35,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                nama,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => linkTujuan));
            },
            icon: SvgPicture.asset("assets/svg/profile_details.svg"),
          )
        ],
      ),
    );
  }
}
