import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';

class CartItemCard extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  CartItemCard({
    Key? key,
    this.itemName,
    this.itemPrice,
  }) : super(key: key);

  final itemName;
  final itemPrice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10.0,right:10,bottom: 10),
      child: Container(
        width: MediaQuery.of(context).size.width ,
        decoration:
            BoxDecoration(color: white, borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage('assets/images/child.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              itemName,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.currency_pound_outlined,
                                  size: 15,
                                  color: textGrey,
                                ),
                                Text(
                                  itemPrice,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: textGrey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: textGrey,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.remove,
                            size: 15,
                            color: white,
                          )),
                      SizedBox(
                          width: 30,
                          child: Center(
                              child: Text(
                            '2',
                            style: TextStyle(fontSize: 20),
                          ))),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: themeColor,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.add,
                          size: 15,
                          color: white,
                        ),
                      )
                    ],
                  ),
                ),
             
              ],
            ),
          ],
        ),
      ),
    );
  }
}
