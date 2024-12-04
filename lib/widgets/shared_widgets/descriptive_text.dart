import 'package:awsome_places/util/colors.dart';
import 'package:flutter/material.dart';

class DescriptiveText extends StatelessWidget {
  final String description;
  const DescriptiveText({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: TextStyle(
          fontSize: 16,
          color: mainTextColor
      ),
      textAlign: TextAlign.justify,
    );
  }
}
