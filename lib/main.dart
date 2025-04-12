import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_reposnsive/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  //debugPaintSizeEnabled = true;

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff58abf3),
        appBarTheme: AppBarTheme(color: Color(0xff1d8af1)),

        fontFamily: GoogleFonts.dmSerifDisplay(color: Colors.white).fontFamily,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Responsive',
    );
  }
}
