import 'package:flutter/material.dart';
import 'package:food_delivery/callreview.dart';
import 'package:food_delivery/notification.dart';
import 'package:food_delivery/widgets/backbtn.dart';
import 'package:food_delivery/widgets/greenbtn.dart';

class VocherScreen extends StatelessWidget {
  const VocherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 19.0, horizontal: 8),
        child: Column(
          children: [
            Backbtn(direction: Callreview()),
            SizedBox(height: 10),
            Image.asset('assets/images/Voucher1.png'),
            SizedBox(height: 10),
            Image.asset('assets/images/Voucher1.png'),
            SizedBox(height: 400),
            GreenButton(btntext: 'Submitt', direction: Notificationscreen()),
          ],
        ),
      ),
    );
  }
}
