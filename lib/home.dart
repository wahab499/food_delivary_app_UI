import 'package:flutter/material.dart';
import 'package:food_delivery/models/fodmenu_model.dart';
import 'package:food_delivery/models/resturant_model.dart';
import 'package:food_delivery/popular_menu.dart';
import 'package:food_delivery/popular_resturant.dart';
import 'package:food_delivery/widgets/foodmenu.dart';
import 'package:food_delivery/widgets/hometop.dart';
import 'package:food_delivery/widgets/horizontal_restaurant_scroll.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nearest Restaurant',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PopularResturant(),
                        ),
                      );
                    },
                    child: Text(
                      'View More',
                      style: TextStyle(fontSize: 14, color: Colors.orange),
                    ),
                  ),
                ],
              ),

              SingleChildScrollView(
                child: Column(
                  children: [
                    HorizontalRestaurantScroll(restaurants: resturant),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Menu',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PopularMenu()),
                      );
                    },
                    child: Text(
                      'View More',
                      style: TextStyle(fontSize: 14, color: Colors.orange),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Column(children: [PopularmenuScroll(menus: menu)]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<RestaurantModel> resturant = [
  RestaurantModel(
    name: 'Sajawal',
    imageUrl: 'assets/images/restaurant1.png',
    time: '12:20',
  ),
  RestaurantModel(
    name: 'Jalandhar',
    imageUrl: 'assets/images/resturant2.png',
    time: '12:20',
  ),
  RestaurantModel(
    name: 'Nirala',
    imageUrl: 'assets/images/Logo.png',
    time: '12:20',
  ),
  RestaurantModel(
    name: 'Gulam Nabi',
    imageUrl: 'assets/images/Logo.png',
    time: '12:20',
  ),
];

List<Popularmenu> menu = [
  Popularmenu(
    imageUrl: 'assets/images/congrts.png',
    name: 'Baryani',
    price: '7',
    foodflavor: 'Full Spicy',
  ),
  Popularmenu(
    imageUrl: 'assets/images/congrts.png',
    name: 'Baryani',
    price: '7',
    foodflavor: 'Full Spicy',
  ),
  Popularmenu(
    imageUrl: 'assets/images/congrts.png',
    name: 'Baryani',
    price: '7',
    foodflavor: 'Full Spicy',
  ),
];
