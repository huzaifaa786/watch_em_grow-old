
import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';


class InputType2 extends StatelessWidget {
  const InputType2(
      {Key? key,
      this.controller,
      this.hint,
      this.text,
      this.color =  Colors.brown,
      this.obscure = false,
      this.maxlines = false,
      this.enabled = true,
      this.readOnly = false,
      this.onChange,
      this.imageIcon,
      this.validator,
      this.autovalidateMode,
      // this.validate,
      this.icon,
      this.type = TextInputType.text,
      this.fontSize = 17.0,
      this.onpressed})
      : super(key: key);

  final controller;
  final validator;
  // final RxBool? validate;
  final obscure;
  final hint;
  final type;
  final imageIcon;
  final icon;
  final text;
  final autovalidateMode;
  final color;
  final maxlines;
  final onChange;
  final onpressed;
  final fontSize;
  final enabled;
  final readOnly;

  @override
  Widget build(BuildContext context) {
    // bool isDark = Provider.of<DarkThemeProvider>(context).darkTheme;

   return Container(
   decoration: BoxDecoration(
    border: Border.all()
   ),
    child: Column(children: [

    ]),

   );
  }
}
