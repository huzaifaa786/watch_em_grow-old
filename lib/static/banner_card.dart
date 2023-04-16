// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';

class BannerCard extends StatelessWidget {
  const BannerCard(
      {Key? key,
      this.title,
      this.onPressed,
      this.image = 'assets/images/edit.svg',
      this.sreenRatio = 0.9,
      this.color = cardGrey})
      : super(key: key);

  final title;
  final onPressed;
  final sreenRatio;
  final color;
  final image;
  // final textcolor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
           children: [
          Stack(
            // // overflow: Overflow.visible,
            alignment: AlignmentDirectional.centerEnd,
            fit: StackFit.loose,
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(),
                height:80,
                width: MediaQuery.of(context).size.width* 0.9,
                child: Image.asset("assets/images/child.jpg", fit: BoxFit.cover,)),
              Positioned(
                  child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right:30.0),
                    child: Text('Shope By Age',style: TextStyle(color: primaryColor,fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ],
              ))
            ],
          )
        ]),
      ],
    );
  }
}
