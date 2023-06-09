import 'package:flutter/material.dart';
import 'package:watch_em_grow/screen/store/store_product.dart';
import 'package:watch_em_grow/static/shop_card.dart';
import 'package:watch_em_grow/values/colors.dart';

class TopProductScreen extends StatelessWidget {
  const TopProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                  children: [
                    Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(color: themeColor),
              child: Center(
                  child: Text(
                'Tops',
                style: TextStyle(color: white, fontSize: 35,fontWeight: FontWeight.bold),
              ))),
                    SizedBox(
                      height: 20,
                    ),
                    ShopeCard(
                       onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StoreProductScreen()),
                        );
                      },
                    ),
                    SizedBox(height:10,),
                    ShopeCard(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StoreProductScreen()),
                        );}
                    ),
                    SizedBox(height:10,),
                    ShopeCard(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StoreProductScreen()),
                        );}
                    ),
                    SizedBox(height:10,),
                    ShopeCard(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StoreProductScreen()),
                        );}
                    ),
                  ],
                ),
            )));
  }
}
