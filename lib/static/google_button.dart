// ignore_for_file: prefer_typing_uninitialized_variables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton(
      {Key? key,
      @required this.title,
      @required this.onPressed,
      this.text,
      this.textcolor,
      this.icon='assets/images/google.png',
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
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
                    
      decoration: BoxDecoration(border:Border.all(color: textGrey) ),
      child: ElevatedButton(
        onPressed: onPressed,
       style: ElevatedButton.styleFrom(
          // ignore: deprecated_member_use
          primary: color,
          onPrimary: primaryTextColor,
          
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
                    // border: Border.all(color:textGrey),
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
