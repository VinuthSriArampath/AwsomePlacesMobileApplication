import 'package:awsome_places/util/colors.dart';
import 'package:awsome_places/widgets/shared_widgets/descriptive_text.dart';
import 'package:awsome_places/widgets/shared_widgets/place_card.dart';
import 'package:flutter/material.dart';

class NaturalWondersPage extends StatelessWidget {
  const NaturalWondersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Natural Wonders",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: mainNaturalWondersColor
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
                  title: "Nature Wonders Place-1",
                  titleColor: subNaturalWondersColor,
                  imagePath: "assets/nature1.png",
                  description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                  isRounded: false,
              ),
              const SizedBox(
                height: 20,
              ),
              PlaceCard(
                  title: "Nature Wonders Place-2",
                  titleColor: subNaturalWondersColor,
                  imagePath: "assets/nature2.png",
                  description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                isRounded: false,
              ),
              const SizedBox(
                height: 20,
              ),
              PlaceCard(
                  title: "Nature Wonders Place-3",
                  titleColor: subNaturalWondersColor,
                  imagePath: "assets/nature3.png",
                  description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                isRounded: false,
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
