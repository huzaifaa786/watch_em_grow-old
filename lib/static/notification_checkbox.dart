// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';

class NCheckBox extends StatefulWidget {
  const NCheckBox({Key? key, this.checkbox = false,
  this.text, 
  required Function this.onchanged
  
  }) : super(key: key);
  final checkbox;
  final onchanged;
  final text;
  @override
  State<NCheckBox> createState() => _NCheckBoxState(onchanged);
}

class _NCheckBoxState extends State<NCheckBox> {
  final Function onchanged;

  _NCheckBoxState(Function this.onchanged) {}

  changeValue() {
    onchanged();
  }
  

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      checkColor: Colors.white,
      activeColor: primaryColor,
      title: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            TextSpan(text:'I agree to the receive marketing notification with offer and news' ,style: TextStyle(
            color: hintText,
            fontSize: 16,
          ),),
          
          ]
        ),
      ),
      value: widget.checkbox,
      onChanged: (value) {
        changeValue();
      },
    );
  }
}
            