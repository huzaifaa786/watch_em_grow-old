// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  const SmallButton(
      {Key? key,
      @required this.title,
      @required this.onPressed,
      this.text,
      this.textcolor,
      this.icon,
      this.sreenRatio = 0.9,
      this.buttonWidth = 0.3,
      this.color = Colors.pink})
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
    return Container(
      width: MediaQuery.of(context).size.width * buttonWidth,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          // ignore: deprecated_member_use
          primary: color,
          onPrimary: Colors.amber,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w600, color: textcolor),
            ),
          ],
        ),
      ),
    );
  }
}
