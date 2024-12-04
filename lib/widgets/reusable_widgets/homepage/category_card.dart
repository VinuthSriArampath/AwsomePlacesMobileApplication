import 'package:awsome_places/util/colors.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final double cardWidth;
  final Color cardColor;

  final double cardHeight=130;
  const CategoryCard({super.key, required this.title, required this.cardColor,required this.cardWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: mainBlack,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}
