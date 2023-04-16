// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:watch_em_grow/screen/product/top_product.dart';
import 'package:watch_em_grow/static/product_card.dart';
import 'package:watch_em_grow/static/shop_card.dart';
import 'package:watch_em_grow/static/shope_review_card.dart';
import 'package:watch_em_grow/static/toggle_button.dart';
import 'package:watch_em_grow/static/top_bar.dart';
import 'package:watch_em_grow/values/colors.dart';

class StoreProductScreen extends StatefulWidget {
  const StoreProductScreen({super.key});

  @override
  State<StoreProductScreen> createState() => _StoreProductScreenState();
}

class _StoreProductScreenState extends State<StoreProductScreen> {
  // bool vertical = false;
  // int index = 0;
  // toggleFun(state) {
  //   print(state);
  //   setState(() {
  //     index = state;
  //   });
  // }
  bool tap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(children: [
        TopBar(),
      SwitchToggle(onPressed: (){},),
        ShopReviewCard(),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.5, color: textGrey),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, bottom: 20.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Filter by Size',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: textGrey),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('XXL')),
                    ),
                    Container(
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: textGrey),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('XL')),
                    ),
                    Container(
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: textGrey),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('M')),
                    ),
                    Container(
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: textGrey),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('S')),
                    ),
                  ],
                )
             
              ],
            ),
          ),
        ),
        Row(
          children: [
            Row(
              children: [
                ProductCard(
                  title: 'Fabric Kurti',
                  currency: 'Rs.',
                  price: '1500',
                  // image: 'assets/images/bottom.jpg',
                  height: 150.0,
                   onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TopProductScreen()),
                        );
                      },
                )
              ],
            ),
            Row(
              children: [
                ProductCard(
                  title: 'Fabric Kurti',
                  currency: 'Rs.',
                  price: "1500",
                  // image: 'assets/images/bottom.jpg',
                  height: 150.0,
                   onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TopProductScreen()),
                        );
                      },
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            Row(
              children: [
                ProductCard(
                  title: 'Fabric Kurti',
                  currency: 'Rs.',
                  price: '1500',
                  // image: 'assets/images/bottom.jpg',
                  height: 150.0,
                   onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TopProductScreen()),
                        );
                      },
                )
              ],
            ),
            Row(
              children: [
                ProductCard(
                  title: 'Fabric Kurti',
                  currency: 'Rs.',
                  price: "1500",
                  // image: 'assets/images/bottom.jpg',
                  height: 150.0,
                   onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TopProductScreen()),
                        );
                      },
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            Row(
              children: [
                ProductCard(
                  title: 'Fabric Kurti',
                  currency: 'Rs.',
                  price: '1500',
                  // image: 'assets/images/bottom.jpg',
                  height: 150.0,
                )
              ],
            ),
            Row(
              children: [
                ProductCard(
                  title: 'Fabric Kurti',
                  currency: 'Rs.',
                  price: "1500",
                  // image: 'assets/images/bottom.jpg',
                  height: 150.0,
                )
              ],
            ),
          ],
        )
      ]),
    )));
  }
}
