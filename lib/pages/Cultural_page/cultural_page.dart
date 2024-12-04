import 'package:awsome_places/widgets/shared_widgets/rate_card.dart';
import 'package:awsome_places/widgets/shared_widgets/custom_button.dart';
import 'package:awsome_places/widgets/shared_widgets/descriptive_text.dart';
import 'package:awsome_places/widgets/shared_widgets/sub_heading.dart';
import 'package:awsome_places/widgets/shared_widgets/text_inputfield_box.dart';
import 'package:flutter/material.dart';

import '../../util/colors.dart';

class CulturalPage extends StatelessWidget {
  const CulturalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cultural",
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: mainCultureColor
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DescriptiveText(description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  "assets/culture_1.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                  color: mainTextColor,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(child: SubHeading(heading: "Rate this Place", headingColor: mainNightLifeColor)),
              const RateCard(),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                  color: mainTextColor,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(child: SubHeading(heading: "Send Feedback", headingColor: mainNightLifeColor)),
              const TextInputFieldBox(hintText: "Enter Your FeedBack",),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(buttonText: "Submit",buttonColour: thirdCategoryColor,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
