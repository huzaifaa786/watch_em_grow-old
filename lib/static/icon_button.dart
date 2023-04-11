// ignore_for_file: prefer_typing_uninitialized_variables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';


class ButtonIcon extends StatelessWidget {
  const ButtonIcon(
      {Key? key,
      @required this.title,
      @required this.onPressed,
      this.text,
      this.textcolor,
      this.icon,
      this.sreenRatio = 0.9,
      this.buttonWidth = 0.9,
      this.color = primaryTextColor})
      : super(key: key);

 
  final title;
  final onPressed;
  final sreenRatio;
  final color;
  final text;
  final textcolor;
  final icon;
  final buttonWidth;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * buttonWidth,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          // ignore: deprecated_member_use
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
              child: Padding(
                padding: const EdgeInsets.only(top:5.0),
                child: Container(
                  height:30,
                  width: 30,
                  decoration: BoxDecoration(
                      // border: Border.all(color: secondaryD_color),
                      borderRadius: BorderRadius.circular(20)),
                 child: Column(children: [
                  //  SvgPicture.asset(icon)
                 ],),
                ),
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
