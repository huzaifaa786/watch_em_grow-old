
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:watch_em_grow/values/colors.dart';
class InputFieldPhone extends StatelessWidget {
   const InputFieldPhone(
      {Key? key,
      this.controller,
      @required this.title,
      this.hint,
      this.text,
      this.icon,
      this.imageIcon,
      this.color,
      this.obscure = false,
      this.ontap,
      this.onChange,
      this.onpressed})
      : super(key: key);

  final controller;
  final title;
  final obscure;
  final hint;
  final text;
  final icon;
  final imageIcon;
  final color;
  final ontap;
  final onChange;
  final onpressed;

  @override
  Widget build(BuildContext context) {
    // bool isDark = Provider.of<DarkThemeProvider>(context).darkTheme;
    var border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent, width: 1),
      borderRadius: const BorderRadius.all(
        const Radius.circular(15),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
        Container(
          height: 60,
          decoration: BoxDecoration(
           border:Border.all(
            color: hintText
           )
          ),
          child: Padding(
            padding: const EdgeInsets.only(top:10.0,left: 10),
            child: IntlPhoneField(
              autovalidateMode: AutovalidateMode.disabled,
              disableLengthCheck: true,
              initialCountryCode: 'PK',
              dropdownIconPosition: IconPosition.trailing,
              flagsButtonPadding: EdgeInsets.only(bottom: 5,left: 10,),
              dropdownIcon:Icon(Icons.arrow_drop_down,size: 21,color: secondaryDarkColor,) ,
              onChanged: (value) {
                onChange(value);
              },
              controller: controller,
              obscureText: obscure,
              // dropdownDecoration: BoxDecoration(),
              style: TextStyle(
                fontSize: 16,
                color: secondaryTextColor
              ),
              cursorColor: Colors.black,
              keyboardType: TextInputType.phone,
              decoration: new InputDecoration(
                focusedBorder: border,
                enabledBorder: border,
                errorBorder: border,
                disabledBorder: border,
                // label: title,
                contentPadding: EdgeInsets.only(right: 5),
                hintText: hint,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
