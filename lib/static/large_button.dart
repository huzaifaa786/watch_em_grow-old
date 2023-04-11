// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';

class LargeButton extends StatelessWidget {
  const LargeButton(
      {Key? key,
      @required this.title,
      @required this.onPressed,
      this.text,
      this.textcolor,
      this.icon,
      this.buttonWidth = 0.8,
      this.sreenRatio = 0.9,
      this.color = themeColor})
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
      width: MediaQuery.of(context).size.width * sreenRatio,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          // ignore: deprecated_member_use
          primary: color,
          shadowColor: themeColor,
          // ignore: deprecated_member_use
          onPrimary: themeColor,
          shape: const RoundedRectangleBorder(
            
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: white,
                fontFamily: 'Opensans',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
