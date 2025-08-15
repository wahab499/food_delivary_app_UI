import 'package:flutter/material.dart';
import 'package:food_delivery/vocher_screen.dart';
import 'package:star_rating/star_rating.dart';

class Callreview extends StatefulWidget {
  const Callreview({super.key});

  @override
  State<Callreview> createState() => _CallreviewState();
}

class _CallreviewState extends State<Callreview> {
  final int starLength = 5;
  double _rating = 0;
  // void _incrementHalfStar() {
  //   setState(() {
  //     _rating += 0.5;
  //     if (_rating > starLength) {
  //       _rating = starLength.toDouble();
  //     }
  //   });
  // }

  // void _decrementHalfStar() {
  //   setState(() {
  //     _rating -= 0.5;
  //     if (_rating < 0.0) {
  //       _rating = 0.0;
  //     }
  //   });
  // }

  @override
  IconData _currenticon = Icons.volume_up;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 200),
          ClipRRect(
            child: Image.asset('assets/images/reviewimage.png', width: 250),
          ),
          SizedBox(height: 15),

          Text(
            'Thank You! \nOrder Completed',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          Text(
            'Please rate your last Driver',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          StarRating(
            mainAxisAlignment: MainAxisAlignment.center,
            length: starLength,
            rating: _rating,
            between: 5,
            starSize: 40,
            color: Colors.amber,
            onRaitingTap: (rating) {
              print('Clicked rating: $rating / $starLength');
              setState(() {
                _rating = rating;
              });
            },
          ),

          SizedBox(height: 50),
          SizedBox(
            height: 60,
            width: 350,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Leave Feedback',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.black12),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 270,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green,
                ),
                // child: GestureDetector(
                //   onTap: () {
                //     setState(() {
                //       _currenticon =
                //           _currenticon == Icons.volume_up
                //               ? Icons.volume_mute
                //               : Icons.volume_up;
                //     });
                //   },
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VocherScreen()),
                    );
                  },
                  child: Text(
                    'Submit',

                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                //Icon(_currenticon, color: Colors.green),
                // ),
              ),

              SizedBox(width: 10),
              Container(
                width: 90,
                height: 70,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Callreview()),
                    );
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
