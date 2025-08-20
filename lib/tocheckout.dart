import 'package:flutter/material.dart';
import 'package:food_delivery/Orderpage.dart';
import 'package:food_delivery/setmaplocation.dart';
import 'package:food_delivery/widgets/backbtn.dart';
import 'package:food_delivery/widgets/greenbtn.dart';
import 'package:food_delivery/widgets/hometop.dart';

class Findfavoritefood extends StatelessWidget {
  const Findfavoritefood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 8),
        child: Column(
          children: [
            Backbtn(direction: Orderpage()),
            SizedBox(height: 10),

            Hometop(),
            SizedBox(height: 10),
            Selectfood(
              name: 'Spacy fresh crab',
              title: 'Waroenk kita',
              notificationimage: 'assets/images/callImage.png',
              price: 35,
            ),
            SizedBox(height: 10),
            Selectfood(
              name: 'Spacy fresh crab',
              title: 'Waroenk kita',
              notificationimage: 'assets/images/callImage.png',
              price: 35,
            ),
            SizedBox(height: 10),
            Selectfood(
              name: 'Spacy fresh crab',
              title: 'Waroenk kita',
              notificationimage: 'assets/images/callImage.png',
              price: 35,
            ),
            SizedBox(height: 10),
            Selectfood(
              name: 'Spacy fresh crab',
              title: 'Waroenk kita',
              notificationimage: 'assets/images/callImage.png',
              price: 35,
            ),
            Spacer(),
            GreenButton(btntext: 'Check out', direction: Locationmap()),
          ],
        ),
      ),
    );
  }
}

class Selectfood extends StatelessWidget {
  final String name;
  final String title;
  final int price;
  final String notificationimage;
  Selectfood({
    super.key,
    required this.name,
    required this.title,
    required this.notificationimage,
    required this.price,
  });

  var value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child: Image.asset(notificationimage),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * .75,
                    child: Text(
                      name,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Text(title),
                  Text(
                    '\$${price.toString()}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Process')),
          ],
        ),
      ],
    );
  }
}
