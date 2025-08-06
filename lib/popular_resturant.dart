import 'package:flutter/material.dart';
import 'package:food_delivery/home.dart';
import 'package:food_delivery/widgets/hometop.dart';
import 'package:food_delivery/widgets/vertical_restaurant_croll';

class PopularResturant extends StatelessWidget {
  const PopularResturant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Hometop(),
              SizedBox(height: 20),
              SizedBox(
                height: 180,
                width: 410,
                child: Image.asset(
                  'assets/images/promoadvertising.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 10),
              VerticalRestaurantScroll(restaurants: resturant),
            ],
          ),
        ),
      ),
    );
  }
}
