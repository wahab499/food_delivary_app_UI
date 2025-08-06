import 'package:flutter/material.dart';
import 'package:food_delivery/photoupload.dart';
import 'package:food_delivery/profilecongrts.dart';
import 'package:food_delivery/widgets/backbtn.dart';
import 'package:food_delivery/widgets/greenbtn.dart';

class Setlocation extends StatelessWidget {
  const Setlocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F5FE),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Backbtn(direction: Photoupload()),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    'Set Your Location ',
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
                    'This data will be displayed in your account \nprofile for security',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(child: Icon(Icons.location_on)),
                SizedBox(width: 10),
                Text(
                  'Your Location ',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Set Location ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 450),
            GreenButton(btntext: 'Next', direction: Profilecongrts()),
          ],
        ),
      ),
    );
  }
}
