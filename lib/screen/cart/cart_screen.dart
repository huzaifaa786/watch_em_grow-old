import 'package:flutter/material.dart';
import 'package:watch_em_grow/static/large_button.dart';
import 'package:watch_em_grow/static/shope_review_card.dart';
import 'package:watch_em_grow/static/top_bar.dart';
import 'package:watch_em_grow/values/colors.dart';

import '../../static/item_card.dart';
import '../../static/subtotal_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TopBar(
              title: 'Cart',
            ),
            // EmptyScreenCard(),
            ShopReviewCard(),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15.0, left: 15, bottom: 15),
                    child: Text(
                      'ITEMS',
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          CartItemCard(
                            itemName: 'Shalwar Kamiz',
                            itemPrice: '1500.00',
                          ),
                          CartItemCard(
                            itemName: 'Shalwar Kamiz',
                            itemPrice: '1500.00',
                          ),
                          CartItemCard(
                            itemName: 'Shalwar Kamiz',
                            itemPrice: '1500.00',
                          ),
                          CartItemCard(
                            itemName: 'Shalwar Kamiz',
                            itemPrice: '1500.00',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SubTotalCard(),
            SizedBox(
              height: 60,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: white),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15.0, bottom: 30.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total',style: TextStyle(fontWeight: FontWeight.bold),),
                          Row(
                            children: [
                              Icon(
                                Icons.currency_pound_outlined,
                                size: 15,
                                color: textGrey,
                              ),
                              Text('00.00'),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      LargeButton(title: 'Continue', onPressed: (){})
                    ],
                  ),
                )),
          ],
        ),
      )),
    );
  }
}
