import 'package:flutter/material.dart';
import 'package:watch_em_grow/static/shop_card.dart';
import 'package:watch_em_grow/values/colors.dart';

class TopProductScreen extends StatelessWidget {
  const TopProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                  children: [
                    Container(
              width: MediaQuery.of(context).size.width,
              height: 35,
              decoration: BoxDecoration(color: themeColor),
              child: Center(
                  child: Text(
                'Tops',
                style: TextStyle(color: white, fontSize: 20),
              ))),
                    SizedBox(
                      height: 20,
                    ),
                    ShopeCard(),
                    SizedBox(height:10,),
                    ShopeCard(),
                    SizedBox(height:10,),
                    ShopeCard(),
                    SizedBox(height:10,),
                    ShopeCard(),
                  ],
                ),
            )));
  }
}
