import 'package:flutter/material.dart';
import 'package:food_delivery/models/fodmenu_model.dart';

class PopularmenuScroll extends StatelessWidget {
  final List<Popularmenu> menus;
  const PopularmenuScroll({super.key, required this.menus});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: menus.length,
      itemBuilder: (context, index) {
        final menu = menus[index];
        return SizedBox(
          height: 100,
          width: 350,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(menu.imageUrl, height: 70, width: 70),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      menu.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(menu.foodflavor),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(menu.price),
              ),
            ],
          ),
        );
      },
    );
  }
}
