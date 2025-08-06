import 'package:flutter/material.dart';

class Backbtn extends StatelessWidget {
  final Widget direction;
  const Backbtn({super.key, required this.direction});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffF9A84D).withValues(alpha: 0.2),
          ),

          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => direction),
              );
            },
            icon: Icon(Icons.arrow_back, color: Color(0xffDA6317)),
          ),
        ),
      ],
    );
  }
}
