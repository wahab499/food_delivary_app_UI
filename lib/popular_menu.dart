import 'package:flutter/material.dart';
import 'package:food_delivery/home.dart';
import 'package:food_delivery/widgets/foodmenu.dart';
import 'package:food_delivery/widgets/hometop.dart';

class PopularMenu extends StatelessWidget {
  const PopularMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: true,
        right: true,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [Hometop(), PopularmenuScroll(menus: menu)]),
        ),
      ),
    );
  }
}
