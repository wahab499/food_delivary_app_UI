import 'package:flutter/material.dart';
import 'package:food_delivery/signup.dart';

class OnBordingOne extends StatefulWidget {
  const OnBordingOne({super.key});

  @override
  State<OnBordingOne> createState() => _OnBordingOneState();
}

class _OnBordingOneState extends State<OnBordingOne> {
  final PageController _pageController = PageController();
  int _currentindex = 0;
  final List _pages = [
    allComponents(
      title: 'Find your  Comfort Food here',
      description:
          'Here You Can find a chef or dish for every taste and color. Enjoy!',
      imagePath: 'assets/images/Illustartion1.png',
    ),
    allComponents(
      title: 'Food Ninja is Where Your Comfort Food Lives',
      description: 'Enjoy a fast and smooth food delivery at your doorstep',
      imagePath: 'assets/images/Illustration2.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pages.length,
            onPageChanged: (index) {
              setState(() {
                _currentindex = (index);
              });
            },
            itemBuilder: (context, index) => _pages[index],
          ),
          Positioned(
            left: 40,
            right: 40,
            bottom: 40,
            child: Container(
              height: 54.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
                  if (_currentindex < _pages.length - 1) {
                    _pageController.animateToPage(
                      _currentindex + 1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signup()),
                    );
                  }
                },
                child: Text(
                  _currentindex == _pages.length - 1 ? "Finish" : "Next",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class allComponents extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  const allComponents({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          Image.asset(imagePath, height: 550),
          SizedBox(
            width: 300,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 300,
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
