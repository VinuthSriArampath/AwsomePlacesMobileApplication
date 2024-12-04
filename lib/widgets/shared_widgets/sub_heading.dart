import 'package:flutter/material.dart';

class SubHeading extends StatelessWidget {
  final String heading;
  final Color headingColor;
  const SubHeading({super.key, required this.heading, required this.headingColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
        color: headingColor,
        fontSize: 20,
        fontWeight: FontWeight.w600
      ),
    );
  }
}
