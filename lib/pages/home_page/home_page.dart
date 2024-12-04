import 'package:awsome_places/pages/home_page/widgets/homepage_appbar.dart';
import 'package:awsome_places/pages/landmarks_page/landmarks_page.dart';
import 'package:awsome_places/pages/natural_wonders_page/natural_wonders_page.dart';
import 'package:awsome_places/pages/nightlife_page/nightlife_page.dart';
import 'package:awsome_places/util/colors.dart';
import 'package:awsome_places/widgets/reusable_widgets/homepage/category_card.dart';
import 'package:awsome_places/widgets/shared_widgets/sub_heading.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomepageAppbar(),
              const HeightBox(),
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                style: TextStyle(
                  color: mainTextColor,
                  fontSize: 16
                ),
                textAlign: TextAlign.justify,
              ),
              const HeightBox(),
              Image.asset(
                  "assets/main.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
              ),
              const HeightBox(),
              const SubHeading(heading: "Select a Place from the categories", headingColor: mainColor),
              const HeightBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)=> const NaturalWondersPage()
                            )
                        );
                      },
                      child: const CategoryCard(title: "Natural Wonders", cardColor: firstCategoryColor, cardWidth: 180)
                  ),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)=> const NightlifePage()
                            )
                        );
                      },
                      child: const CategoryCard( title: "Nightlife", cardColor: firstCategoryColor,cardWidth: 180)
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LandmarksPage()
                            )
                        );
                      },
                      child: const CategoryCard(title: "Landmarks", cardColor: secondCategoryColor, cardWidth: 180)),
                  CategoryCard(title: "Culture", cardColor: secondCategoryColor, cardWidth: 180),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const CategoryCard(title: "Book For A Ride Today!", cardColor: thirdCategoryColor, cardWidth: double.infinity),
            ],
          ),
        )),
      ),
    );
  }
}

class HeightBox extends StatelessWidget {
  const HeightBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20,
    );
  }
}
