import 'dart:io';
import 'package:flutter/material.dart';
import 'package:food_delivery/setlocation.dart';
import 'package:food_delivery/widgets/greenbtn.dart';

class SecondScreen extends StatelessWidget {
  final File? imageePath;

  const SecondScreen({required this.imageePath, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Selected Image')),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child:
                      imageePath != null
                          ? Image.file(imageePath!, fit: BoxFit.cover)
                          : Text('No image provided'),
                ),
              ),
            ),
            SizedBox(height: 150),
            GreenButton(btntext: 'Next', direction: Setlocation()),
          ],
        ),
      ),
    );
  }
}
