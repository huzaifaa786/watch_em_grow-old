// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:diamond_bottom_bar/diamond_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:watch_em_grow/screen/home/home_screen.dart';
import 'package:watch_em_grow/screen/index/chat_screen.dart';
import 'package:watch_em_grow/screen/index/notification_screen.dart';
import 'package:watch_em_grow/screen/profile/profile_screen.dart';
import 'package:watch_em_grow/screen/store/store_product.dart';
import 'package:watch_em_grow/values/colors.dart';

class BottomBar extends StatefulWidget {
  const BottomBar(
      {Key? key,
      this.title,
      this.onPressed,
      this.image = 'assets/images/product2.jpg',
      this.sreenRatio = 0.9,
      this.height = 150.0,
      // this.mainheight = 50,
      this.color = cardGrey})
      : super(key: key);

  final title;
  final onPressed;
  final sreenRatio;
  final color;
  final height;
  // final mainheight;
  final image;

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
   int _selectedIndex = 0;
  late Widget _selectedWidget;
  @override
   void initState() {
    _selectedWidget = const HomeScreen();
    super.initState();
  }
  void onPressed(index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        _selectedWidget = const HomeScreen();
      }else if (index == 1) {
        _selectedWidget = const NotificationScreen();
      }else if (index == 2) {
        _selectedWidget = const StoreProductScreen();
      }else if (index == 3) {
        _selectedWidget = const ChatScreen();
      }else if (index == 4) {
        _selectedWidget = const ProfileScreen();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _selectedWidget,
        bottomNavigationBar: DiamondBottomNavigation(
          itemIcons: const [
            Icons.home,
            Icons.notifications,
            Icons.message,
            Icons.account_box,
          ],
          centerIcon: (FontAwesomeIcons.tshirt),
          selectedIndex: _selectedIndex,
          onItemPressed: onPressed,
          selectedColor: themeColor,
          selectedLightColor: themeColor,
        ),
    
    
    
    );
  }
}
