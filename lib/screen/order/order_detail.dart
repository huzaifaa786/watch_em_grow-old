import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:watch_em_grow/static/large_button.dart';
import 'package:watch_em_grow/static/top_bar.dart';
import 'package:watch_em_grow/values/colors.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: textGrey,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBar(
              title: 'Nahida Home Botique',
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('February 1,2023'),
                  Text('Amount',
                      style: TextStyle(
                          color: primaryColor, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Order ID:',
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold)),
                      Text('#167534897212',
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Text('50.00')
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cancelled',
                        style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('February 1,2023'),
                    ],
                  ),
                  Icon(
                    Icons.check_circle_outline_rounded,
                    color: Colors.green,
                    size: 25.0,
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 25),
              child: Row(
                children: [
                  Icon(
                    Icons.check_circle_outline_rounded,
                    color: Colors.green,
                    size: 25.0,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Order Placed',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.check_circle_outline_rounded,
                    color: Colors.grey,
                    size: 25.0,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Order Recieved',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.check_circle_outline_rounded,
                    color: Colors.grey,
                    size: 25.0,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rent Period Finish',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        'Due 12/7/2023',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 45.0),
              child: Row(
                children: [
                  Icon(
                    Icons.check_circle_outline_rounded,
                    color: Colors.grey,
                    size: 25.0,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Order Return',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Container(
              height: 70,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left:15.0,top:20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Booking Details',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.only(top:10.0),
                        child: Row(
                          children: [
                            Text('Product Name:'),
                            Text('My Product'),
                          ],
                        ),
                      ),
                      Padding(
                           padding: const EdgeInsets.only(top:10.0),
                        child: Row(
                          children: [
                            Text('Product Price:'),
                            Text('50'),
                          ],
                        ),
                      ),
                      Padding(
                           padding: const EdgeInsets.only(top:10.0),
                        child: Row(
                          children: [
                            Text('Booking Days:'),
                            Text('2 days'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
              
              ),
          Divider(
              color: Colors.grey,
              thickness: 1,
            ),
SizedBox(height: 20,),
            Center(
              child: LargeButton(title: 'Ready to Return',
               sreenRatio: 0.9,
                        color: themeColor,
                        textcolor: white,
                        buttonWidth: 0.95,
               onPressed: (){}),
            ),
            SizedBox(height: 20,),
             Center(
              child: LargeButton(title: 'Some Thing Wrong ?',
               sreenRatio: 0.9,
                        color: themeColor,
                        textcolor: white,
                        buttonWidth: 0.95,
               onPressed: (){}),
            )
          ],
        ),
      )),
    );
  }
}
