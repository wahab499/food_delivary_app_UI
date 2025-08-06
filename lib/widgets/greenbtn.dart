import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  final String btntext;
  final Widget direction;

  const GreenButton({
    super.key,
    required this.btntext,
    required this.direction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      width: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [Color(0xff53E88B), Color(0xff15BE77)],
        ),
      ),

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => direction),
          );
        },
        child: Text(
          btntext,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
