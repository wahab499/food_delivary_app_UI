import 'package:flutter/material.dart';
import 'package:food_delivery/congrts2.dart';
import 'package:food_delivery/forgotpass.dart';
import 'package:food_delivery/widgets/backbtn.dart';
import 'package:food_delivery/widgets/greenbtn.dart';

class Resetpass extends StatelessWidget {
  const Resetpass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 15),
            Backbtn(direction: Forgotpass()),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    'Reset your password \nhere',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Select which contact details should we \nuse to reset your password',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(height: 300),
            Container(
              height: 200,
              width: 380,
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            GreenButton(btntext: 'Next', direction: Congrts2()),
          ],
        ),
      ),
    );
  }
}
