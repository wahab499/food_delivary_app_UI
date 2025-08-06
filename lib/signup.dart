import 'package:flutter/material.dart';
import 'package:food_delivery/onbording_screens/signin.dart';
import 'package:food_delivery/widgets/greenbtn.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
              'Login To Your Account',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            SizedBox(
              // margin: EdgeInsets.all(20),
              height: 60,
              width: 350,

              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Email',
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
            Text(
              'Or Continue With',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 57,
                  width: 152,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/facebook-3.png'),
                      SizedBox(width: 5),
                      Text('Facebook', style: TextStyle()),
                    ],
                  ),
                ),
                SizedBox(
                  height: 57,
                  width: 152,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/google-icon.png'),
                      SizedBox(width: 5),
                      Text('Google'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Forgot Your Password?',
              style: TextStyle(
                fontSize: 16,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            GreenButton(btntext: 'Login', direction: Signin()),
          ],
        ),
      ),
    );
  }
}
