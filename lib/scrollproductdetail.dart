import 'package:flutter/material.dart';

class Scrollproductdetail extends StatelessWidget {
  const Scrollproductdetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/Restaurantphoto.png'),

              Positioned(
                top: 300,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.80,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade400,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text('Popular')),
                              ),
                              Spacer(),
                              CircleAvatar(child: Icon(Icons.heart_broken)),
                              SizedBox(width: 10),
                              CircleAvatar(child: Icon(Icons.location_on)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Wijie Bar and Resto',
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined),
                              Text('19 Km'),
                              SizedBox(width: 30),
                              Icon(Icons.star),
                              Text('4,8 Rating'),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .',
                                  style: TextStyle(
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Popular Menu',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'View All',
                                style: TextStyle(color: Colors.orange),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        height: 100,
                                        width: 100,
                                        'assets/images/pizzaslice.png',
                                      ),
                                      Text(
                                        'Spacy fresh crab',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text('12\$'),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        height: 100,
                                        width: 100,
                                        'assets/images/pizzaslice.png',
                                      ),
                                      Text(
                                        'Spacy fresh crab',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text('12\$'),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        height: 100,
                                        width: 100,
                                        'assets/images/pizzaslice.png',
                                      ),
                                      Text(
                                        'Spacy fresh crab',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text('12\$'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(
                                height: 70,
                                width: 70,
                                child: Image.asset(
                                  'assets/images/chatprofilephoto.png',
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width:
                                          MediaQuery.sizeOf(context).width *
                                          .75,
                                      child: Text(
                                        'aaaaddd',
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    Text('aaa'),
                                    Text(
                                      'ffff',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
