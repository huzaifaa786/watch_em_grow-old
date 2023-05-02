import 'package:flutter/material.dart';
import 'package:watch_em_grow/screen/product/top_product.dart';
import 'package:watch_em_grow/static/toggle_button2.dart';
import 'package:watch_em_grow/static/top_bar.dart';

class IndexChatScreen extends StatelessWidget {
  const IndexChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                  children: [
            TopBar(title: 'Index',
             onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TopProductScreen()),
                        );}
            
            ),
            SwitchToggleSecond(onPressed: (){},),
            Padding(
              padding: const EdgeInsets.only(left:15.0,top:15),
              child: Row(children: [
                  Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/images/child.jpg'),
                          fit: BoxFit.cover,
                        ),
                        // border: Border.all(color: hintText),
                        borderRadius: BorderRadius.circular(30),
                      ),
                  
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:28.0),
                      child: Text('lashology',style: TextStyle(fontWeight: FontWeight.bold ),),
                    ),
              ],),
            ),

                  Padding(
              padding: const EdgeInsets.only(left:15.0,top:15),
              child: Row(children: [
                  Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/images/child.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:28.0),
                      child: Text('lashology',style: TextStyle(fontWeight: FontWeight.bold ),),
                    ),
              ],),
            ),
                 Padding(
              padding: const EdgeInsets.only(left:15.0,top:15),
              child: Row(children: [
                  Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/images/child.jpg'),
                          fit: BoxFit.cover,
                        ),
                        // border: Border.all(color: hintText),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:28.0),
                      child: Text('lashology',style: TextStyle(fontWeight: FontWeight.bold ),),
                    ),
              ],),
            )
                
                  ],
                ),
          )),
    );
  }
}
