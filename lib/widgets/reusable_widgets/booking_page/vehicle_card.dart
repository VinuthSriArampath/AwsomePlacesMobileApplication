import 'package:awsome_places/util/colors.dart';
import 'package:flutter/material.dart';

class VehicleCard extends StatelessWidget {
  final String imagePath;
  final String title;
  const VehicleCard({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: mainColor
            ),
          )
        ],
      ),
    );
  }
}
