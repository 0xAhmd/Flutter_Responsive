import 'package:flutter/material.dart';
import 'package:flutter_reposnsive/responsive/ipad_body.dart';
import 'package:flutter_reposnsive/responsive/mobile_body.dart';
import 'package:flutter_reposnsive/responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ResponsiveLayout(mobileBody: MobileBody(), desktopBody: IPad()),
    );
  }
}
