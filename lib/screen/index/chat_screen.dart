import 'package:flutter/material.dart';
import 'package:watch_em_grow/screen/product/top_product.dart';
import 'package:watch_em_grow/static/top_bar.dart';
import 'package:watch_em_grow/values/colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 20, bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chat with Seller',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize:15),
                      ),
                      Text(
                        'online',
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Icon(Icons.close),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 15),
                  child: Container(
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
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: hintText),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          // color: Colors.amber,
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                                'Hi,sir i am on the way,Hi,sir i am on the way,Hi,sir i am on the way,Hi,sir i am on the way'),
                          )),
                      Text('12.04 am')
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 15),
                  child: Container(
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
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: hintText),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                                'Hi,sir i am on the way,Hi,sir i am on the way,Hi,sir i am on the way,Hi,sir i am on the way'),
                          )),
                      Text('12.04 am')
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                              border: Border.all(color: hintText),
                              borderRadius: BorderRadius.circular(20),
                              color: themeColor),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              'ok!i am waiting',
                              style: TextStyle(color: white),
                            ),
                          )),
                      Text('12.04 am')
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height:MediaQuery.of(context).size.height*0.4,),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              border: Border.all(color: hintText),
                              borderRadius: BorderRadius.circular(20),
                              ),
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: Text('write your message'),
                              ),
                              Icon(Icons.arrow_circle_right,color: themeColor,size:50,)
                             ],)
            )
          ],
        ),
      )),
    );
  }
}
