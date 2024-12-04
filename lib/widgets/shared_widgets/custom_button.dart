import 'package:awsome_places/util/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColour;
  const CustomButton({super.key, required this.buttonText, required this.buttonColour});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 15
          ),
          backgroundColor: buttonColour
        ),
        child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 16,
              color: mainBlack
            ),
        )
    );
  }
}
