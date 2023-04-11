import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';

class SearchInput extends StatelessWidget {
  const SearchInput(
      {Key? key,
      this.controller,
      this.hint,
      this.text,
      this.icon,
      this.imageIcon,
      this.color,
      this.title,
      this.obscure = false,
      this.ontap,
      this.onChange,
      this.onpressed})
      : super(key: key);

  final controller;

  final obscure;
  final hint;
  final text;
  final icon;
  final title;
  final imageIcon;
  final color;
  final ontap;
  final onChange;
  final onpressed;

  @override
  Widget build(BuildContext context) {
    var border = const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red , width: 1),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    );
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                color:white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all( color:primaryColor,
                    width: 2,),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.amber.withOpacity(0.15),
                //   ),
                //   BoxShadow(
                //     color: Colors.white,
                //     spreadRadius: -5.0,
                //     // blurRadius: isDark ? 0.0 : 5.0,
                //   ),
                // ],
              ),
              child: TextField(
                onChanged: (value) {
                  onChange(value);
                },
                expands: false,
                controller: controller,
                obscureText: obscure,
                // enabled: true, //Not clickable and not editable
                // readOnly: true,
                style: const TextStyle(fontSize: 14, color: Colors.blueGrey),
                cursorColor: primaryColor,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                
                  suffixIcon: IconButton(
                    onPressed: onpressed,
                    icon: const Icon(Icons.search,color: primaryColor,)
                  ),
                  // focusedBorder: border,
                  // enabledBorder: border,
                  errorBorder: border,
                  disabledBorder: border,
                  label: title,
                  contentPadding: const EdgeInsets.only(left: 20),
                  hintText: hint,
                  labelText: text
                  // hintStyle: TextStyle(color: themeController.isDarkTheme.value?primaryColor:hintText)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
