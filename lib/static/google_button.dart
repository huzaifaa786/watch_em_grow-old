// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton(
      {Key? key,
      @required this.title,
      @required this.onPressed,
      this.text,
      this.textcolor,
      this.icon,
      this.sreenRatio = 0.9,
      this.buttonwidth = 0.37,
      this.color = primaryTextColor})
      : super(key: key);

  final title;
  final onPressed;
  final sreenRatio;
  final color;
  final text;
  final textcolor;
  final icon;
  final buttonwidth;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * buttonwidth,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: color,
          onPrimary: primaryTextColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15), topLeft: Radius.circular(15)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           GestureDetector(
              onTap: () {
              },
              child: Container(
                height:28,
                width: 28,
                decoration: BoxDecoration(
                    // border: Border.all(color: secondaryD_color),
                    borderRadius: BorderRadius.circular(20)),
               child: Column(children: [
                 Image.asset(icon)
               ],),
              ),
            ),
           const SizedBox(width: 5,),
            Text(
              title,
              style: TextStyle(
                color: textcolor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
