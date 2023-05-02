import 'package:flutter/material.dart';
import 'package:watch_em_grow/static/notification_card.dart';
import 'package:watch_em_grow/values/colors.dart';

import '../../static/toggle_button2.dart';
import '../../static/top_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            TopBar(title: 'Index',
             onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const TopProductScreen()),
                        // );
                        }
            
            ),
            SwitchToggleSecond(onPressed: (){},),
          NotificationCard(),
          NotificationCard(),
          NotificationCard(),
          ],
        ),
      )),
    );
  }
}
