import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timelines/timelines.dart';

import '../constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<String> day = [
      "Senin",
      "Selasa",
      "Rabu",
      "Kamis",
      "Jumat",
      "Sabtu",
    ];

    List<String> tanggal = [
      "12 Januari 1945",
      "13 Januari 1945",
      "14 Januari 1945",
      "15 Januari 1945",
      "16 Januari 1945",
      "17 Januari 1945",
    ];

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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/png/picture_profile.png",
                            height: size.height / 11,
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "PT Puskomedia Indonesia Kreatif",
                                style: GoogleFonts.poppins(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "Bambang W",
                                style: GoogleFonts.poppins(
                                  color: whiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(children: [
                        Expanded(
                          flex: 5,
                          child: FlatButton(
                            onPressed: () {},
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: btnBlueColor,
                              ),
                              child: Center(
                                child: Text(
                                  "Sign in",
                                  style: TextStyle(
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: FlatButton(
                            onPressed: () {},
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red,
                              ),
                              child: Center(
                                child: Text(
                                  "Sign Out",
                                  style: TextStyle(
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ]),
                      SizedBox(
                        height: 50,
                      ),
                      Flexible(
                        child: Container(
                          height: size.height,
                          width: size.width,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            border: Border.all(color: Colors.grey[200]),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 0,
                                blurRadius: 7,
                                offset: Offset(5, 2),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Log Absensi",
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Flexible(
                                  child: Container(
                                    height: size.height / 2,
                                    width: double.infinity,
                                    child: Timeline.tileBuilder(
                                      theme: TimelineTheme.of(context).copyWith(
                                        nodePosition: 0,
                                        indicatorTheme:
                                            TimelineTheme.of(context)
                                                .indicatorTheme
                                                .copyWith(
                                                    position: 0, size: 27),
                                      ),
                                      builder: TimelineTileBuilder.fromStyle(
                                        contentsAlign: ContentsAlign.basic,
                                        addAutomaticKeepAlives: true,
                                        contentsBuilder: (context, index) =>
                                            Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 40, left: 20),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    day[index],
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "Absen Hadir",
                                                    style: GoogleFonts.poppins(
                                                      color: textGreyColor,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Absen Pulang",
                                                    style: GoogleFonts.poppins(
                                                      color: textGreyColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    tanggal[index],
                                                    style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  Text(
                                                    "00:00",
                                                    style: GoogleFonts.poppins(
                                                      color: textGreyColor,
                                                    ),
                                                  ),
                                                  Text(
                                                    "00:01",
                                                    style: GoogleFonts.poppins(
                                                      color: textGreyColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        // nodePositionBuilder: (context, index) => ,
                                        itemCount: day.length,
                                      ),
                                    ),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
