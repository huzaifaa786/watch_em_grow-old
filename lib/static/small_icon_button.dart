import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SmallIconButton extends StatelessWidget {
  const SmallIconButton(
      {Key? key,
      @required this.onPressed,
      this.icon = 'assets/images/back.svg',
      this.height = 58.0,
      this.color = Colors.blue})
      : super(key: key);

  final onPressed;
  final color;
  final icon;
  final height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          width: 56,
          height: height,
          decoration: BoxDecoration(
              color: color,
                boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 3,
          blurRadius: 3,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
              borderRadius: BorderRadiusDirectional.only(
                  bottomEnd: Radius.circular(10), topStart: Radius.circular(10))),
          child: Center(
            // child:  SvgPicture.asset(icon),
          )),
    );
  }
}
