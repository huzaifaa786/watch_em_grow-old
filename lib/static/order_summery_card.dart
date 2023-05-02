import 'package:flutter/material.dart';
import 'package:watch_em_grow/values/colors.dart';

class OrderSummeryCard extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  OrderSummeryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration:
          BoxDecoration(color: white, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.only(
            left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ORDER SUMMARY',
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shalwar Kamiz',
                ),
                Row(
                  children: [
                    Icon(
                      Icons.currency_pound_outlined,
                      size: 15,
                      color: textGrey,
                    ),
                    Text('2500.00'),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
              color: themeColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub Total',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.currency_pound_outlined,
                      size: 15,
                      color: textGrey,
                    ),
                    Text('2500.00'),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discount',
                  style: TextStyle(color: hintText),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.currency_pound_outlined,
                      size: 15,
                      color: textGrey,
                    ),
                    Text('00.00'),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Fee',
                  style: TextStyle(color: hintText),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.currency_pound_outlined,
                      size: 15,
                      color: textGrey,
                    ),
                    Text('20.00'),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
