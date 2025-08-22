import 'package:flutter/material.dart';
import 'package:food_delivery/scrollproductdetail.dart';
import 'package:food_delivery/tocheckout.dart';
import 'package:food_delivery/widgets/backbtn.dart';
import 'package:food_delivery/widgets/greenbtn.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Locationmap extends StatefulWidget {
  const Locationmap({super.key});

  @override
  State<Locationmap> createState() => _LocationmapState();
}

class _LocationmapState extends State<Locationmap> {
  LatLng mycurrentlocation = LatLng(30.3753, 69.3451);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 8),
        child: Column(
          children: [
            Backbtn(direction: Findfavoritefood()),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 390,
                  decoration: BoxDecoration(
                    color: Colors.amber.shade100,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Icon(Icons.search, size: 30, color: Colors.deepOrange),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'What do you want to order?',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Spacer(),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Deliver to',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Addressedit()),
                            // );
                          },
                          child: Text(
                            'Edit',
                            style: TextStyle(color: Colors.green, fontSize: 18),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        SizedBox(
                          height: 70,
                          width: 70,
                          child: CircleAvatar(
                            backgroundColor: Colors.yellow,
                            child: Icon(
                              Icons.location_on,
                              size: 38,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * .75,
                                child: Text(
                                  '4517 Washington Ave. Manchester, Kentucky 39495',
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    GreenButton(
                      btntext: 'Set Location',
                      direction: Scrollproductdetail(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // GoogleMap(
      //   initialCameraPosition: CameraPosition(
      //     target: mycurrentlocation,
      //     zoom: 15,
      //   ),
      // ),
    );
  }
}
