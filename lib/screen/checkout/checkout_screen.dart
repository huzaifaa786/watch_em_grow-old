import 'package:flutter/material.dart';
import 'package:watch_em_grow/static/address_card.dart';
import 'package:watch_em_grow/static/large_button.dart';
import 'package:watch_em_grow/static/payment_method_card.dart';
import 'package:watch_em_grow/static/top_bar.dart';
import 'package:watch_em_grow/values/colors.dart';
import '../../static/commint_card.dart';
import '../../static/item_card.dart';
import '../../static/order_summery_card.dart';
import '../../static/subtotal_card.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TopBar(
              title: 'Checkout',
            ),
            SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:15.0,right:15.0),
            child: AddressCard(),
          ),
           
            SizedBox(
              height: 25,
            ),
           Padding(
             padding: const EdgeInsets.only(left:15.0,right:15.0),
             child: PaymentMethodCard(),
           ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0),
              child: CommintsCard(),
            ),
             SizedBox(
              height: 10,
            ),
             Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0),
              child: OrderSummeryCard(),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: white),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15.0, bottom: 30.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total',style: TextStyle(fontWeight: FontWeight.bold),),
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
                      SizedBox(height: 20,),
                      LargeButton(title: 'Continue', onPressed: (){})
                    ],
                  ),
                )),
          ],
        ),
      )),
    );
  }
}
