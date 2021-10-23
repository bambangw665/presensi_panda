import 'package:flutter/material.dart';
import 'package:presensi_panda/provider/btnbarProvider.dart';
import 'package:presensi_panda/screen/btnbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Presensi Panda',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        // primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<BottomNavigationBarprovider>(
        child: BottomNavigationBarExample(),
        create: (context) => BottomNavigationBarprovider(),
        // builder: (BuildContext) => BottomNavigationBarprovider(),
      ),
    );
  }
}
