import 'package:awsome_places/widgets/reusable_widgets/landmarks_page/landmarks_place_card.dart';
import 'package:flutter/material.dart';

import '../../util/colors.dart';
import '../../widgets/shared_widgets/descriptive_text.dart';
import '../../widgets/shared_widgets/place_card.dart';

class LandmarksPage extends StatelessWidget {
  const LandmarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Landmarks",
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: mainLandmarksColor
          ),
        ),
      ),
      body:const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20
          ),
          child: Column(
            children: [
              DescriptiveText(description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
              SizedBox(
                height: 20,
              ),
              LandmarksPlaceCard(
                  title:"Landmarks Place-1",
                  imagePath: "https://images.pexels.com/photos/290386/pexels-photo-290386.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."
              ),
              SizedBox(
                height: 20,
              ),
              LandmarksPlaceCard(
                  title:"Landmarks Place-2",
                  imagePath: "https://images.pexels.com/photos/1448136/pexels-photo-1448136.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
