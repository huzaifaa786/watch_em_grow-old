import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';

class TopBar extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration( border: Border(
              bottom: BorderSide(width: 1.5, color: Colors.grey),
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
                onPressed: () {
                  // do something
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 13.0),
                child: Text(
                  "Nahis fabric",
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
