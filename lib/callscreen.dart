import 'package:flutter/material.dart';

class Callscreen extends StatelessWidget {
  const Callscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 200),
          ClipRRect(
            child: Image.asset('assets/images/callImage.png', width: 200),
          ),
          SizedBox(height: 15),

          Text(
            'Courtney Henry',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(
            'Ringing . . .',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 300),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.green.shade50,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: (Icon(Icons.volume_up, color: Colors.green)),
                ),
              ),
              SizedBox(width: 20),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.red,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: (Icon(Icons.call_end, color: Colors.white)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
