import 'package:flutter/material.dart';
import 'package:food_delivery/callreview.dart';

class Callscreen extends StatefulWidget {
  const Callscreen({super.key});

  @override
  State<Callscreen> createState() => _CallscreenState();
}

class _CallscreenState extends State<Callscreen> {
  //bool currenticon = true;
  IconData _currenticon = Icons.volume_up;
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
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _currenticon =
                          _currenticon == Icons.volume_up
                              ? Icons.volume_mute
                              : Icons.volume_up;
                    });
                  },
                  child: Icon(_currenticon, color: Colors.green),
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Callreview()),
                    );
                  },
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
