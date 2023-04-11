import 'package:flutter/material.dart';
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
                height: 20,
              ),
              SearchInput(
                text: 'search',
              ),
              SizedBox(
                height: 20,
              ),
              RatingCard(),
              SizedBox(
                height: 10,
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
                            title: 'outware',
                            // image: 'assets/images/outware.jpg',
                          ),
                          CategoryCard(
                            title: 'Shoes',
                            image: 'assets/images/shoes.jpg',
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      CategoryCard(
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
                        title: 'bottom',
                        // image: 'assets/images/bottom.jpg',
                        height:150.0,
                      )
                ],),
                Row(children: [
                    CategoryCard(
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
