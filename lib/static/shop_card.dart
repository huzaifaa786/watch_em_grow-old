// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:watch_em_grow/static/category_card.dart';
import 'package:watch_em_grow/values/colors.dart';

class ShopeCard extends StatelessWidget {
  const ShopeCard(
      {Key? key,
      this.title,
      this.onPressed,
      this.image = 'assets/images/product2.jpg',
      this.sreenRatio = 0.9,
      this.height = 120.0,
      // this.mainheight = 50,
      this.color = cardGrey})
      : super(key: key);

  final title;
  final onPressed;
  final sreenRatio;
  final color;
  final height;
  // final mainheight;
  final image;
  // final textcolor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: hintText),
                      shape: BoxShape.circle,
                    ),
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/user1.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      children: [
                        Text(
                          'Shop Name',
                          style: TextStyle(fontSize: 15, color: primaryColor),
                        ),
                        Text(
                          '4 follower',
                          style: TextStyle(fontSize: 15, color: primaryColor),
                        ),
                      ],
                    ),
                  ),
                
                ],
              ),
              Row(
                children: [
                  Text(
                    'view shop',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
               Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
               Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
