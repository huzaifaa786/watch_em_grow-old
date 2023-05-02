// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard(
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
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap:onPressed ,
      child:   Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage('assets/images/child.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'lashology',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Ali followed you',
                              style: TextStyle(color: textGrey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: themeColor,
                            border: Border.all(color: hintText),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 45.0, right: 45, top: 10, bottom: 10),
                            child: Center(
                                child: Text(
                              'following',
                              style: TextStyle(color: white),
                            )),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
       
      ),
    );
  }
}
