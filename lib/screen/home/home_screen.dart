import 'package:flutter/material.dart';
import 'package:watch_em_grow/screen/product/top_product.dart';
import 'package:watch_em_grow/screen/store/store_product.dart';
import 'package:watch_em_grow/static/banner_card.dart';
import 'package:watch_em_grow/static/category_card.dart';
import 'package:watch_em_grow/static/rating_card.dart';
import 'package:watch_em_grow/static/search_input.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              SearchInput(
                text: 'search',
              ),
              SizedBox(
                height: 20,
              ),
              RatingCard(
                 onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StoreProductScreen()),
                        );
                      },
              ),
              SizedBox(
                height: 15,
              ),
              BannerCard(),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          CategoryCard(
                             onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StoreProductScreen()),
                        );
                      },
                            title: 'outware',
                            // image: 'assets/images/outware.jpg',
                          ),
                          CategoryCard(
                             onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StoreProductScreen()),
                        );
                      },
                            title: 'Shoes',
                            // image: 'assets/images/shoes.jpg',
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      CategoryCard(
                         onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StoreProductScreen()),
                        );
                      },
                        title: 'Tops',
                        image: 'assets/images/top.jpg',
                        height:300.0,
                      )
                    ],
                  ),
                ],
              ),
              Row(children: [
                Row(children: [
                    CategoryCard(
                       onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StoreProductScreen()),
                        );
                      },
                        title: 'bottom',
                        // image: 'assets/images/bottom.jpg',
                        height:150.0,
                      )
                ],),
                Row(children: [
                    CategoryCard(
                       onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StoreProductScreen()),
                        );
                      },
                        title: 'Tops',
                        height:150.0,
                      )
                ],)
              ],)
          
            ],
          ),
        ),
      ),
    );
  }
}
