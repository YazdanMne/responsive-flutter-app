import 'package:flutter/material.dart';
import 'package:responsive_app/responsive/dimations.dart';

class ResponsiveLayout extends StatelessWidget {
  final mobileBody;
  final desktopBody;
  ResponsiveLayout({required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
