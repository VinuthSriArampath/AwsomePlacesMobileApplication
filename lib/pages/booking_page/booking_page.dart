import 'package:awsome_places/widgets/reusable_widgets/booking_page/vehicle_card.dart';
import 'package:awsome_places/widgets/shared_widgets/custom_button.dart';
import 'package:awsome_places/widgets/shared_widgets/descriptive_text.dart';
import 'package:awsome_places/widgets/shared_widgets/rate_card.dart';
import 'package:awsome_places/widgets/shared_widgets/sub_heading.dart';
import 'package:awsome_places/widgets/shared_widgets/text_inputfield_box.dart';
import 'package:flutter/material.dart';

import '../../util/colors.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Book For A Ride Today!",
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: mainColor
          ),
        ),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DescriptiveText(description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
              const SizedBox(
                height: 20,
              ),
              const SubHeading(heading: "Select a vehicle", headingColor: mainColor),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  VehicleCard(imagePath: "assets/car_1.png", title: "Car"),
                  VehicleCard(imagePath: "assets/bus1.png", title: "Bus"),
                  VehicleCard(imagePath: "assets/bike1.png", title: "Bike"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SubHeading(heading: "Selected Place", headingColor: mainColor),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "assets/culture_1.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black.withOpacity(0.5)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SubHeading(heading: "Selected Place", headingColor: mainWhite),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                            style: TextStyle(
                              color: mainWhite,
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          RateCard()
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SubHeading(heading: "Fill The Details", headingColor: mainColor),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "User Name",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black38
                      ),
                    ),
                    TextInputFieldBox(hintText: "John.."),
                    Text(
                      "Country",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black38
                      ),
                    ),
                    TextInputFieldBox(hintText: "Canada..")
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Team Size",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black38
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const Center(
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                    color: mainWhite,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Column(
                          children: [
                            DescriptiveText(description: "Add or Remove team members"),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                CustomButton(buttonText: "Add +", buttonColour: addButtonColor),
                                SizedBox(
                                  width: 15,
                                ),
                                CustomButton(buttonText: "remove -", buttonColour: removeButtonColor)
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Colors.black26,
              ),
              const SizedBox(
                height: 20,
              ),
              const DescriptiveText(description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(buttonText: "Submit", buttonColour: thirdCategoryColor)
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
