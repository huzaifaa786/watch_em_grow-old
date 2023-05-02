import 'package:flutter/material.dart';
import 'package:watch_em_grow/static/top_bar.dart';
import '../../static/empy_screen_card.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TopBar(
            //   title: 'Cart',
            // ),
            EmptyScreenCard(
title: 'Order Placed Successfully',
subtitle: 'congratulation your order is placed successfully',
icon: Icons.check_circle_outline,
iconColor: Colors.green,
iconBackground: Colors.green[100],
buttonTitle: 'View Order Status',

            ),
         
          ],
        ),
      )),
    );
  }
}
