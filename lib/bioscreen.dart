import 'package:flutter/material.dart';
import 'package:food_delivery/onbording_screens/signin.dart';
import 'package:food_delivery/paymentscreen.dart';
import 'package:food_delivery/widgets/backbtn.dart';
import 'package:food_delivery/widgets/greenbtn.dart';

class Bioscreen extends StatelessWidget {
  const Bioscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            Backbtn(direction: Signin()),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20, left: 30),
                  child: Text(
                    'Fill in your bio to get \nstarted',
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
            SizedBox(
              height: 60,
              width: 350,

              child: TextField(
                decoration: InputDecoration(
                  hintText: 'First Name',
                  fillColor: Color(0xffF4F4F4),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 60,
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Last Name',
                  fillColor: Color(0xffF4F4F4),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 60,
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Mobile Number',
                  fillColor: Color(0xffF4F4F4),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),

            SizedBox(height: 270),
            GreenButton(btntext: 'Next', direction: Paymentscreen()),
          ],
        ),
      ),
    );
  }
}
