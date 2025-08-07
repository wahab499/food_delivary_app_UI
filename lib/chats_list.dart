import 'package:flutter/material.dart';
import 'package:food_delivery/chat_screen.dart';
import 'package:food_delivery/models/chatsdata_model.dart';
import 'package:food_delivery/widgets/backbtn.dart';
import 'package:food_delivery/widgets/navbar.dart';

class Chat extends StatelessWidget {
  //final List<ChatDataModel> chatsData;
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            Backbtn(direction: BottomNavBar()),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Chat',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                itemCount: chatuserdata.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatScreen()),
                      );
                    },
                    child: Container(
                      width: 380,
                      height: 120,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade200,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 90,
                              width: 90,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  chatuserdata[index].imageUrl,
                                ),
                              ),
                            ),
                            SizedBox(width: 30),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                SizedBox(
                                  width: 220,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,

                                    children: [
                                      Text(
                                        chatuserdata[index].username,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),

                                      Text(
                                        chatuserdata[index].time,
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  chatuserdata[index].message,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(height: 7);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<ChatDataModel> chatuserdata = [
  ChatDataModel(
    username: 'Anamwp',
    time: '20.00',
    message: 'Your Order Just Arrived!',
    imageUrl: 'assets/images/chatprofilephoto.png',
  ),
  ChatDataModel(
    username: 'Jutt Sab',
    time: '18.00',
    message: 'Your Order Just Arrived!',
    imageUrl: 'assets/images/chatprofilephoto.png',
  ),
  ChatDataModel(
    username: 'Atif Ali',
    time: '16.00',
    message: 'Your Order Just Arrived!',
    imageUrl: 'assets/images/chatprofilephoto.png',
  ),
  ChatDataModel(
    username: 'Waheed',
    time: '22.00',
    message: 'Your Order Just Arrived!',
    imageUrl: 'assets/images/chatprofilephoto.png',
  ),
  ChatDataModel(
    username: 'Abdul',
    time: '23.00',
    message: 'Your Order Just Arrived!',
    imageUrl: 'assets/images/chatprofilephoto.png',
  ),
  ChatDataModel(
    username: 'Waheed',
    time: '22.00',
    message: 'Your Order Just Arrived!',
    imageUrl: 'assets/images/chatprofilephoto.png',
  ),
  ChatDataModel(
    username: 'Abdul Wahab',
    time: '20.00',
    message: 'Your Order Just Arrived!',
    imageUrl: 'assets/images/chatprofilephoto.png',
  ),
];
