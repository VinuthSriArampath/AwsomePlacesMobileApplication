import 'package:awsome_places/util/colors.dart';
import 'package:flutter/material.dart';

class HomepageAppbar extends StatelessWidget {
  const HomepageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Awesome",
              style: TextStyle(
                  fontSize: 22,
                  color: Color(0xff6E7A76), letterSpacing: 3
              ),
            ),
            Text(
              "Places",
              style: TextStyle(
                  color: mainColor,
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5
              ),
            ),
          ],
        ),
        Container(
            width: 50,
            height: 50,
            decoration:BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(100)
            )
        )
      ],
    );
  }
}
