import 'package:awsome_places/util/colors.dart';
import 'package:flutter/material.dart';

class TextInputFieldBox extends StatelessWidget {
  final String hintText;
  const TextInputFieldBox({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: mainTextColor.withOpacity(0.45)
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15
        )
      ),
    );
  }
}
