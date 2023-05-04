import 'package:flutter/material.dart';
import 'package:watch_em_grow/screen/order/order_detail.dart';
import 'package:watch_em_grow/screen/product/top_product.dart';
import 'package:watch_em_grow/static/order_card.dart';
import 'package:watch_em_grow/static/toggle_button2.dart';
import 'package:watch_em_grow/static/top_bar.dart';

class CurrentOrderScreen extends StatelessWidget {
  const CurrentOrderScreen({super.key});

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
            SwitchToggleSecond(),
            SizedBox(height: 20.0,),
            OrderCard(
              onPressed: (){
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OrderDetailScreen()),
                        );
              },
            ),
            SizedBox(height:20.0,),
            OrderCard(
              onPressed: (){
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OrderDetailScreen()),
                        );
              },
            ),
            SizedBox(height:20.0,),
            OrderCard(
              onPressed: (){
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OrderDetailScreen()),
                        );
              },
            ),
                  ],
                ),
          )),
    );
  }
}
