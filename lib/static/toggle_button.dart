// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';

class SwitchToggle extends StatefulWidget {
  const SwitchToggle(
      {Key? key,
      @required this.onPressed,
     })
      : super(key: key);

  final onPressed;
 

  @override
  State<SwitchToggle> createState() => _SwitchToggleState();
}

class _SwitchToggleState extends State<SwitchToggle> {
  List<bool> _isSelected = [false,false,false];

  @override
  Widget build(BuildContext context) {
    return   Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.5, color: textGrey),
            ),
          ),
          child: Center(
              child: ToggleButtons(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.33,
                decoration: BoxDecoration(
                  border: _isSelected[0]
                      ? Border(
                          bottom: BorderSide(
                            width: 3,
                            color: themeColor,
                          ),
                        )
                      : Border(
                          bottom: BorderSide(
                            width: 1.5,
                            color: Colors.grey,
                          ),
                        ),
                ),
                child: Center(
                  child: Text(
                    'About',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.33,
                decoration: BoxDecoration(
                  border: _isSelected[1]
                      ? Border(
                          bottom: BorderSide(
                            width: 3,
                            color: themeColor,
                          ),
                        )
                      : Border(
                          bottom: BorderSide(
                            width: 1.5,
                            color: Colors.grey,
                          ),
                        ),
                ),
                child: Center(
                  child: Text(
                    'Items',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.33,
                decoration: BoxDecoration(
                  border: _isSelected[2]
                      ? Border(
                          bottom: BorderSide(
                            width: 3,
                            color: themeColor,
                          ),
                        )
                      : Border(
                          bottom: BorderSide(
                            width: 1.5,
                            color: Colors.grey,
                          ),
                        ),
                ),
                child: Center(
                  child: Text(
                    'Reviews',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
            isSelected: _isSelected,
            onPressed: (int index) {
              setState(() {
                for (int buttonIndex = 0;
                    buttonIndex < _isSelected.length;
                    buttonIndex++) {
                  if (buttonIndex == index) {
                    _isSelected[buttonIndex] = true;
                  } else {
                    _isSelected[buttonIndex] = false;
                  }
                }
              });
            },
            color: Colors.grey,
            renderBorder: false,
            selectedColor: primaryColor,
            // fillColor:f,
            // borderColor: Colors.lightBlueAccent,
            selectedBorderColor: themeColor,
          )),
        );
        
  }
}
