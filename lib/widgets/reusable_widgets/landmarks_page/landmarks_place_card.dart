import 'package:awsome_places/util/colors.dart';
import 'package:awsome_places/widgets/shared_widgets/descriptive_text.dart';
import 'package:awsome_places/widgets/shared_widgets/sub_heading.dart';
import 'package:flutter/material.dart';

class LandmarksPlaceCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;
  const LandmarksPlaceCard({super.key, required this.title, required this.imagePath, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SubHeading(heading: title, headingColor: subLandmarksColor),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network(
               imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DescriptiveText(description: description)
          ],
        ),
      ),
    );
  }
}
