import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput(
      {Key? key,
      this.controller,
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
    var border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red , width: 1),
      borderRadius: const BorderRadius.all(
        const Radius.circular(15),
      ),
    );
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(17),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: -2.0,
                    // blurRadius: isDark ? 0.0 : 5.0,
                  ),
                ],
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

                style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                cursorColor: Colors.black,
                keyboardType: TextInputType.name,
                decoration: new InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: onpressed,
                    icon: imageIcon != null
                        ? Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ImageIcon(
                              AssetImage(imageIcon),
                              color: color,
                            ),
                          )
                        : Icon(
                            icon,
                            color: color,
                            size: 26,
                          ),
                  ),
                  focusedBorder: border,
                  enabledBorder: border,
                  errorBorder: border,
                  disabledBorder: border,
                  // label: title,
                  contentPadding: EdgeInsets.only(left: 20),
                  hintText: hint,
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
