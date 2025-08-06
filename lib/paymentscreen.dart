import 'package:flutter/material.dart';
import 'package:food_delivery/bioscreen.dart';
import 'package:food_delivery/photoupload.dart';
import 'package:food_delivery/widgets/backbtn.dart';
import 'package:food_delivery/widgets/greenbtn.dart';

class Paymentscreen extends StatelessWidget {
  const Paymentscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F5FE),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            Backbtn(direction: Bioscreen()),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20, left: 30),
                  child: Text(
                    'Payment Method',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, left: 30),
                  child: Text(
                    'This data will be displayed in your account \nprofile for security',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              height: 70,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Image.asset('assets/icons/paypal.png'),
            ),
            SizedBox(height: 30),
            Container(
              height: 70,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Image.asset('assets/icons/visa.png'),
            ),
            SizedBox(height: 30),
            Container(
              height: 70,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Image.asset('assets/icons/Payoneer.png'),
            ),
            SizedBox(height: 250),
            GreenButton(btntext: 'Next', direction: Photoupload()),
          ],
        ),
      ),
    );
  }
}
