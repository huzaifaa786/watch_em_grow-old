// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';

class EmptyScreenCard extends StatelessWidget {
  const EmptyScreenCard(
      {Key? key,
      this.title,
      this.subtitle,
      this.onPressed,
      this.sreenRatio = 0.9,
      this.iconColor = cardGrey,
      this.icon,
      this.iconBackground,
      this.buttonTitle,      
      })
      : super(key: key);

  final title;
  final subtitle;
  final onPressed;
  final sreenRatio;
  final iconColor;
  final icon;
  final iconBackground;
  final buttonTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(color:iconBackground,shape: BoxShape.circle),
              child: Icon(
                icon,
                size: 45,
                color: iconColor,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 70.0),
              child: Text(
               subtitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(color: hintText, fontSize: 12),
              ),
            ),
            SizedBox(height: 15,),
            GestureDetector(
              onTap: onPressed,
              child: Container(
                decoration: BoxDecoration(
                  color: themeColor,
                  // border: Border.all(color: hintText),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15, top: 10, bottom: 10),
                  child: Text(
                    buttonTitle,
                    style: TextStyle(color: white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
