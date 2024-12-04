import 'package:awsome_places/util/colors.dart';
import 'package:awsome_places/widgets/shared_widgets/descriptive_text.dart';
import 'package:awsome_places/widgets/shared_widgets/sub_heading.dart';
import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  final String title;
  final Color titleColor;
  final String imagePath;
  final String description;
  final bool isRounded;

  const PlaceCard(
      {super.key,
      required this.title,
      required this.titleColor,
      required this.imagePath,
      required this.description,
      required this.isRounded});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SubHeading(heading: title, headingColor: titleColor),
        const SizedBox(
          height: 20,
        ),
        isRounded
            ? ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
            )
            : Image.asset(
                imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
        const SizedBox(
          height: 20,
        ),
        DescriptiveText(description: description),
      ],
    );
  }
}
