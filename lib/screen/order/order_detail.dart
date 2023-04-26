import 'package:flutter/material.dart';
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
          children: [
            TopBar(
              title: 'Nahida Home Botique',
            ),
            Padding(  
              padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 20,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('February 1,2023'), Text('Amount')],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0,right: 8.0,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Order ID:'),
                      Text('#167534897212'),
                    ],
                  ),
                  Text('50.00')
                ],
              ),
            ),
            Divider(color: Colors.grey,
            thickness: 2,
            )
          ],
        ),
      )),
    );
  }
}
