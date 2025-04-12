import 'package:flutter/material.dart';
import 'package:flutter_reposnsive/responsive/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobileBody,
    required this.desktopBody,
  });
  final Widget mobileBody;
  final Widget desktopBody;
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < mobileWidth ) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
