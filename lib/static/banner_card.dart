// ignore_for_file: prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';


class BannerCard extends StatelessWidget {
 BannerCard({
    Key? key,
    this.height,
    this.width,
    this.bgcolor,
    this.name = '',
    this.image,
  }) : super(key: key);
  final height;
  final width;
  final bgcolor;
  final name;
  final image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: bgcolor, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                foregroundColor: Colors.grey,
                backgroundColor: Colors.grey,
                radius: 35,
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14,color:Colors.amber,),
                  ),
                  Row(
                    children: [
                      // Text(age + ' Years Old',style: TextStyle(color: themeController.isDarkTheme.value?white:primaryColor,),),
                      // Text(',',style: TextStyle(color: themeController.isDarkTheme.value?white:primaryColor,),),
                      // Text(gender,style: TextStyle(color: themeController.isDarkTheme.value?white:primaryColor,),),
                      // Text(',',style: TextStyle(color: themeController.isDarkTheme.value?white:primaryColor,),),
                      // Text(type,style: TextStyle(color: themeController.isDarkTheme.value?white:primaryColor,),)
                    ],
                  ),
                ],
              ),
              
            ],
          ),
         
        ],
      ),
    );
  }
}