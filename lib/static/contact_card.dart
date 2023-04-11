// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';


class ContactCard extends StatelessWidget {
  const ContactCard(
      {Key? key,
      this.title,
      this.onPressed,
      this.image = 'assets/images/edit.svg',
      this.icon,
      this.subtitle,
      this.sreenRatio = 0.9,
      this.color = cardGrey})
      : super(key: key);

  final title;
  final onPressed;
  final sreenRatio;
  final color;
  final image;
  // final textcolor;
  final icon;
  final subtitle;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap:onPressed ,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: secondaryTextColor,
                      fontFamily: 'Opensans',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: hintText,
                      fontFamily: 'Opensans',
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ]),
                GestureDetector(
                  onTap: onPressed,
                  // child: SvgPicture.asset(
                  //   image,
                  // ),
                ),
                // GestureDetector(
                //   onTap: onPressed,
                //   child: SvgPicture.asset(
                //     'assets/images/edit.svg',
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
