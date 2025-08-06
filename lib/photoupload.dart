import 'dart:io';
import 'package:flutter/material.dart';
import 'package:food_delivery/paymentscreen.dart';
import 'package:food_delivery/photoscreen.dart';
import 'package:food_delivery/widgets/backbtn.dart';
import 'package:food_delivery/widgets/greenbtn.dart';
import 'package:image_picker/image_picker.dart';

class Photoupload extends StatefulWidget {
  const Photoupload({super.key});

  @override
  State<Photoupload> createState() => _PhotouploadState();
}

class _PhotouploadState extends State<Photoupload> {
  String? imagePath;
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F5FE),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            Backbtn(direction: Paymentscreen()),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20, left: 30),
                  child: Text(
                    'Upload Your Photo \nProfile',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, left: 30),
                  child: Text(
                    'This data will be displayed in your account \nprofile for security',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            SizedBox(
              height: 129,
              width: 325,
              child: IconButton(
                onPressed: () async {
                  final ImagePicker picker = ImagePicker();
                  final XFile? image = await picker.pickImage(
                    source: ImageSource.gallery,
                  );
                  if (image != null) {
                    setState(() {
                      imagePath = image.path;
                      imageFile = File(image.path); // <- this line was missing
                    });
                  }
                },
                icon: Image.asset('assets/icons/Gallery-icon.png'),
              ),
            ),
            // SizedBox(height: 200, width: 200, child: Image.file(imagefile)),
            SizedBox(height: 30),
            SizedBox(
              height: 129,
              width: 325,
              child: IconButton(
                onPressed: () async {
                  final ImagePicker picker = ImagePicker();
                  final XFile? image = await picker.pickImage(
                    source: ImageSource.camera,
                  );
                  if (image != null) {
                    setState(() {
                      imagePath = image.path;
                      imageFile = File(image.path); // <- this line was missing
                    });
                  }
                },
                icon: Image.asset('assets/icons/Camera-icon.png'),
              ),
            ),
            SizedBox(height: 30),
            imageFile == null
                ? SizedBox()
                : Image.file(imageFile!, height: 100, width: 200),
            SizedBox(height: 30),
            GreenButton(
              btntext: 'Next',
              direction: SecondScreen(imageePath: imageFile),
            ),
          ],
        ),
      ),
    );
  }
}
