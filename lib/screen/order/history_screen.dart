import 'package:flutter/material.dart';
import 'package:watch_em_grow/screen/product/top_product.dart';
import 'package:watch_em_grow/static/order_card.dart';
import 'package:watch_em_grow/static/top_bar.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: textGrey,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                  children: [
            TopBar(title: 'Orders',
             onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TopProductScreen()),
                        );}
            
            ),
            // SwitchToggleSecond(),
            // SizedBox(height: 20.0,),
            // OrderCard(),
            SizedBox(height:20.0,),
            OrderCard(),
            SizedBox(height:20.0,),
            OrderCard(),
                  ],
                ),
          )),
    );
  }
}
