import 'package:flutter/material.dart';
import 'package:food_delivery/Orderpage.dart';
import 'package:food_delivery/vocher_screen.dart';
import 'package:food_delivery/widgets/backbtn.dart';
import 'package:food_delivery/widgets/greenbtn.dart';

class Notificationscreen extends StatelessWidget {
  const Notificationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 8),
        child: Column(
          children: [
            Backbtn(direction: VocherScreen()),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Text(
                  'Notification',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SingleNotification(
              name: 'Your order has been taken by the driver',
              title: 'data',
              notificationimage: 'assets/images/chatprofilephoto.png',
            ),
            SingleNotification(
              name: 'Your order has been taken by the driver',
              title: 'data',
              notificationimage: 'assets/images/chatprofilephoto.png',
            ),
            SingleNotification(
              name: 'Your order has been taken by the driver',
              title: 'data',
              notificationimage: 'assets/images/chatprofilephoto.png',
            ),
            GreenButton(btntext: 'Move to OrderPage', direction: Orderpage()),
          ],
        ),
      ),
    );
  }
}

class SingleNotification extends StatelessWidget {
  final String name;
  final String title;
  final String notificationimage;
  const SingleNotification({
    super.key,
    required this.name,
    required this.title,
    required this.notificationimage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 70, width: 70, child: Image.asset(notificationimage)),
        SizedBox(width: 10),
        Column(
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
          ],
        ),
      ],
    );
  }
}
