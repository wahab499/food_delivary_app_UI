import 'package:flutter/material.dart';
import 'package:food_delivery/confirmorder.dart';
import 'package:food_delivery/notification.dart';
import 'package:food_delivery/widgets/Billcontainer.dart';
import 'package:food_delivery/widgets/backbtn.dart';

class Orderpage extends StatefulWidget {
  const Orderpage({super.key});

  @override
  State<Orderpage> createState() => _CartState();
}

class _CartState extends State<Orderpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 8),
        child: Column(
          children: [
            Backbtn(direction: Notificationscreen()),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Order Details',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Fooddish(
              name: 'Spacy frest Crab',
              title: 'Waroenk kita',
              price: 45,
              notificationimage: 'assets/images/chatprofilephoto.png',
            ),
            Fooddish(
              name: 'Spacy frest Crab',
              title: 'Waroenk kita',
              price: 45,
              notificationimage: 'assets/images/chatprofilephoto.png',
            ),
            Fooddish(
              name: 'Spacy frest Crab',
              title: 'Waroenk kita',
              price: 45,
              notificationimage: 'assets/images/chatprofilephoto.png',
            ),
            Spacer(),
            BillContainer(direction: OrderConfirm()),
          ],
        ),
      ),
    );
  }
}

class Fooddish extends StatefulWidget {
  final String name;
  final String title;
  final int price;
  final String notificationimage;
  const Fooddish({
    super.key,
    required this.name,
    required this.title,
    required this.notificationimage,
    required this.price,
  });

  @override
  State<Fooddish> createState() => _FooddishState();
}

class _FooddishState extends State<Fooddish> {
  var value = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 70,
          width: 70,
          child: Image.asset(widget.notificationimage),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * .75,
                child: Text(
                  widget.name,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Text(widget.title),
              Text(
                '\$${widget.price.toString()}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.greenAccent.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    value--;
                  });
                },
                icon: Icon(Icons.remove),
              ),
            ),
            Padding(padding: const EdgeInsets.all(8.0), child: Text('$value')),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.greenAccent.shade400,
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    value++;
                  });
                },
                icon: Icon(Icons.add),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
