import 'package:flutter/material.dart';
class AppLogo extends StatelessWidget {
  const AppLogo({Key? key, required this.screenHeight}) : super(key: key);
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight*216/812,
      width: screenHeight*216/812,
      decoration: BoxDecoration(),
    );
  }
}