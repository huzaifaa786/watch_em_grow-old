// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';


class SwitchButton extends StatelessWidget {
  const SwitchButton(
      {Key? key,
      // @required this.onPressed,
      this.icon,
      this.switchToggle,
      bool this.value = false,
      this.onchanged,
      this.sreenRatio = 0.9,
      this.color = Colors.accents})
      : super(key: key);

  // final onPressed;
  final sreenRatio;
  final color;
  final value;
  final onchanged;
  final icon;
  final switchToggle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Switch(
        value: value,
        onChanged: onchanged,
        activeColor:Colors.amber,
        // inactiveThumbColor: themeController.isDarkTheme.value?white:cardGrey, 
        // inactiveTrackColor: themeController.isDarkTheme.value?white:cardGrey,
      ),
    );
  }
}
