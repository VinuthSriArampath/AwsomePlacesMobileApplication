import 'package:flutter/material.dart';

import '../../../util/colors.dart';
import '../../../widgets/shared_widgets/sub_heading.dart';

class RateCard extends StatelessWidget {
  const RateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(child: SubHeading(heading: "Rate this Place", headingColor: mainNightLifeColor)),
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color(0xffCACACA).withOpacity(0.31)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.star,
                color: thirdCategoryColor,
                size: 45,
              ),
              Icon(
                Icons.star,
                color: thirdCategoryColor,
                size: 45,
              ),
              Icon(
                Icons.star,
                color: thirdCategoryColor,
                size: 45,
              ),
              Icon(
                Icons.star,
                color: thirdCategoryColor,
                size: 45,
              ),
              Icon(
                Icons.star,
                size: 45,
              )
            ],
          ),
        ),
      ],
    );
  }
}
