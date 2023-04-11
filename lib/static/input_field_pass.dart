import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';

class InputFieldPassword extends StatelessWidget {
  const InputFieldPassword(
      {Key? key,
      this.controller,
      this.hint,
      this.text,
      this.icon,
      this.imageIcon,
      this.color = secondaryColor,
      this.obscure = false,
      this.toggle,
      this.onChange,
      this.validator,
      // this.validate,
      this.autovalidateMode,
      this.type = TextInputType.text,
      this.onpressed})
      : super(key: key);

  final controller;
  final validator;
  // final RxBool? validate;
  final autovalidateMode;
  final obscure;
  final hint;
  final type;
  final text;
  final icon;
  final imageIcon;
  final color;
  final toggle;
  final onChange;
  final onpressed;

  @override
  Widget build(BuildContext context) {
    // bool isDark = Provider.of<DarkThemeProvider>(context).darkTheme;

    return TextFormField(
      style: const TextStyle(fontSize: 17),
      controller: controller,
      decoration: InputDecoration(
          fillColor: color,
         border: OutlineInputBorder(),
          suffixIcon: IconButton(
            // padding: const EdgeInsets.only(bottom: 17),
            icon: Icon(
              // Based on passwordVisible state choose the icon
              obscure ? Icons.visibility : Icons.visibility_off,
              // color: themeController.isDarkTheme.value?white:primaryColor,
            ),
            onPressed: () {
              toggle();
            },
          ),
          hintText: hint,
          hintStyle: TextStyle(color: hintText),
          ),
      keyboardType: type,
      cursorColor: secondaryTextColor,
      obscureText: obscure, 
      maxLines: 1,
      validator: validator,
      // autovalidateMode: autovalidateMode ??
      //     (validate == true.obs
      //         ? AutovalidateMode.always
      //         : AutovalidateMode.onUserInteraction),
    );
  }
}
