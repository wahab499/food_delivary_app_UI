import 'package:flutter/material.dart';
import 'package:food_delivery/resetpass.dart';
import 'package:food_delivery/widgets/greenbtn.dart';
import 'package:food_delivery/widgets/navbar.dart';

class Congrts2 extends StatelessWidget {
  const Congrts2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 320,
            width: 390,

            clipBehavior: Clip.none,
            decoration: const BoxDecoration(),
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              clipBehavior: Clip.none,
              children: [
                Image.asset('assets/images/Pattern.png', fit: BoxFit.fill),
                Positioned(
                  bottom: -50,
                  right: 100,
                  child: Image.asset('assets/images/congrts.png'),
                ),
              ],
            ),
          ),
          SizedBox(height: 80),
          Image.asset('assets/images/congrtstxt.png'),
          SizedBox(height: 20),

          Text(
            'Password reset succesful',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 250),
          GreenButton(btntext: 'Back', direction: Resetpass()),
          SizedBox(height: 10),
          GreenButton(btntext: 'Next', direction: BottomNavBar()),
        ],
      ),
    );
  }
}
