import 'package:flutter/material.dart';
import 'package:watch_em_grow/screen/product/top_product.dart';
import 'package:watch_em_grow/static/order_card.dart';
import 'package:watch_em_grow/static/toggle_button2.dart';
import 'package:watch_em_grow/static/top_bar.dart';
import 'package:watch_em_grow/values/colors.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: textGrey,
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
            SwitchToggleSecond(),
            SizedBox(height: 20.0,),
            OrderCard(),
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
