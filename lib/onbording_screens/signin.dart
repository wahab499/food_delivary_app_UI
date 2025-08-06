import 'package:flutter/material.dart';
import 'package:food_delivery/bioscreen.dart';
import 'package:food_delivery/widgets/greenbtn.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Image.asset('assets/images/Logo.png'),
            SizedBox(height: 50),
            Text(
              'Sign Up For Free ',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            SizedBox(
              // margin: EdgeInsets.all(20),
              height: 60,
              width: 350,

              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Name',
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

              // decoration: BoxDecoration(
              //color: Colors.amber,
              //  borderRadius: BorderRadius.circular(15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
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

              // decoration: BoxDecoration(
              //color: Colors.amber,
              //  borderRadius: BorderRadius.circular(15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  fillColor: Color(0xffF4F4F4),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Icon(Icons.check_circle, size: 25.0, color: Colors.blue),
                  SizedBox(width: 5),
                  Text(
                    'Keep Me Signed In',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Row(
                children: [
                  Icon(Icons.check_circle, size: 25.0, color: Colors.blue),
                  SizedBox(width: 5),
                  Text(
                    'Email Me About Special Pricing',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            GreenButton(btntext: 'Create Account', direction: Bioscreen()),

            SizedBox(height: 30),
            Text(
              'already have an account?',
              style: TextStyle(
                fontSize: 16,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
