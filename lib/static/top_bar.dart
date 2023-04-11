import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';

class TopBar extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 12,
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SvgPicture.asset('assets/images/notif.svg',color: themeController.isDarkTheme.value?white:primaryColor,),
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: primaryColor,
                  ),
                  onPressed: () {
                    // do something
                  },
                )
              ],
            ),
          ),
       
          Container(
              // padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
              // decoration: const BoxDecoration(
              //     color: secondaryColor,
              //     borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
              // child: SvgPicture.asset('assets/images/horizontallogo.svg'),
              ),
          
        ],
      ),
    );
  }
}
