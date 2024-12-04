import 'package:flutter/material.dart';

import '../../util/colors.dart';
import '../../widgets/shared_widgets/descriptive_text.dart';
import '../../widgets/shared_widgets/place_card.dart';

class NightlifePage extends StatelessWidget {
  const NightlifePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "NightLife",
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: mainNightLifeColor
          ),
        ),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20
          ),
          child: Column(
            children: [
              const DescriptiveText(description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
              const SizedBox(
                height: 20,
              ),
              PlaceCard(
                  title: "Nightlife Place-1",
                  titleColor: subNightLifeColor,
                  imagePath: "assets/night1.png",
                  description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                isRounded: true,
              ),
              const SizedBox(
                height: 20,
              ),
              PlaceCard(
                  title: "Nightlife Place-2",
                  titleColor: subNightLifeColor,
                  imagePath: "assets/night2.png",
                  description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                isRounded: true,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
