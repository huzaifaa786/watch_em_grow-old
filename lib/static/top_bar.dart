import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';

class TopBar extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  TopBar({Key? key,this.title="Nigida Febric and Clothes Collection",this.onPressed}) : super(key: key);
   final title;
   final onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration( border: Border(
              bottom: BorderSide(width: 1, color: themeColor),
            ),),
      margin: const EdgeInsets.only(
        top: 12,
      ),
      child: Row(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: primaryColor,
                ),
                onPressed: onPressed,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 13.0),
                child: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
