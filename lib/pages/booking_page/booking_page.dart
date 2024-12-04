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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(),
        ),
      ),
    );
  }
}
