// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key,
      this.title,
      this.onPressed,
      this.image = 'assets/images/product2.jpg',
      this.sreenRatio = 0.9,
      this.height = 150.0,
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
    return GestureDetector(
       onTap: onPressed,
      child: Container(
        width:MediaQuery.of(context).size.width*0.5,
        
       child : Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width:MediaQuery.of(context).size.width* 0.5,
          height: height,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
         image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.fill,
      ),
          ),
          
        ),
      ),
      Text(title),
       ],)
      ),
    );
  }
}
