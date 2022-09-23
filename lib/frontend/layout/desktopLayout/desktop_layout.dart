import 'package:flutter/material.dart';
import 'package:google_search_engine/colors/colors.dart';

class DesktopScreenLayout extends StatelessWidget {
  const DesktopScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Text('Desktop view'),
      ),
    );
  }
}
