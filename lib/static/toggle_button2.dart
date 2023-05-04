// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';

class SwitchToggleSecond extends StatefulWidget {
  const SwitchToggleSecond(
      {Key? key,
      @required this.onPressed,
      this.first='Current',
      this.second='History',
     })
      : super(key: key);

  final onPressed;
 final first;
 final second;

  @override
  State<SwitchToggleSecond> createState() => _SwitchToggleSecondState();
}

class _SwitchToggleSecondState extends State<SwitchToggleSecond> {
  List<bool> _isSelected = [true,false];
  
  String get first => 'Current';
  String get second => 'History';

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
                width: MediaQuery.of(context).size.width * 0.5,
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
                    first,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
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
                    second,
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
