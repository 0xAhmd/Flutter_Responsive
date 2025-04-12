import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_reposnsive/constants.dart';
import 'package:flutter_reposnsive/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  //debugPaintSizeEnabled = true;

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(backgroundColor),
        appBarTheme: AppBarTheme(color: Color(primaryColor), elevation: 0),

        fontFamily: GoogleFonts.dmSerifDisplay(color: Colors.white).fontFamily,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Responsive',
    );
  }
}
