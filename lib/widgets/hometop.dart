import 'package:flutter/material.dart';
import 'package:food_delivery/filter_page.dart';

class Hometop extends StatelessWidget {
  const Hometop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Find Your \nFavorite Foods',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    spreadRadius: 0.0,
                    blurRadius: 0.0,
                    offset: Offset(0, 4),
                  ),
                ],
              ),

              child: Icon(
                Icons.notifications_outlined,
                color: Colors.greenAccent,
              ),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.amber.shade100,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(Icons.search, size: 30, color: Colors.deepOrange),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'What do you want to order?',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.amber.shade100,
                borderRadius: BorderRadius.circular(15),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FilterPage()),
                  );
                },
                child: Icon(Icons.filter, color: Colors.orange),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
