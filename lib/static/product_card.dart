// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      this.title,
      this.price,
      this.currency,
      this.onPressed,
      this.image = 'assets/images/product2.jpg',
      this.sreenRatio = 0.9,
      this.height = 150.0,
      // this.mainheight = 50,
      this.color = cardGrey})
      : super(key: key);

  final title;
  final price;
  final currency;
  final onPressed;
  final sreenRatio;
  final color;
  final height;
  // final mainheight;
  final image;
  // final textcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    
                     Padding(
                       padding: const EdgeInsets.only(top:10.0,right:10.0),
                       child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(shape: BoxShape.circle ,
                        color:white,
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                                         ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(bottom:10.0,right:10.0),
                       child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(shape: BoxShape.circle ,
                        color:white,
                        ),
                        child: Icon(
                          Icons.card_travel,
                          color: Colors.black
                        ),
                                         ),
                     ),
                  
                  
                ],),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                title,
                style: TextStyle(color: primaryColor, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text(
                    currency,
                    style: TextStyle(color: textGrey, fontSize: 15),
                  ),
                  Text(
                    price,
                    style: TextStyle(color: textGrey, fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
