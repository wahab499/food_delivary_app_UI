import 'package:flutter/material.dart';
import 'package:food_delivery/Orderpage.dart';
import 'package:food_delivery/Paymentedit.dart';
import 'package:food_delivery/addressedit.dart';
import 'package:food_delivery/widgets/Billcontainer.dart';
import 'package:food_delivery/widgets/backbtn.dart';

class OrderConfirm extends StatelessWidget {
  const OrderConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 8),
        child: Column(
          children: [
            Backbtn(direction: Orderpage()),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Confirm Order',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Deliver to',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Addressedit()),
                    );
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
                    child: Icon(Icons.location_on, size: 38, color: Colors.red),
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
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment Method',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Paymentedit()),
                    );
                  },
                  child: Text(
                    'Edit',
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 70,
                  width: 120,
                  child: Image.asset('assets/icons/paypal.png'),
                ),
                SizedBox(width: 50),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * .75,
                        child: Text(
                          '2121 6352 8465 ****',
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            BillContainer(),
          ],
        ),
      ),
    );
  }
}
