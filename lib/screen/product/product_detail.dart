import 'package:flutter/material.dart';
import 'package:watch_em_grow/screen/cart/cart_screen.dart';
import 'package:watch_em_grow/static/iconic_button.dart';
import 'package:watch_em_grow/static/product_review.dart';
import 'package:watch_em_grow/static/shope_review_card.dart';
import 'package:watch_em_grow/static/top_bar.dart';
import 'package:watch_em_grow/values/colors.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
          TopBar(
            title: "Women's",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 15),
                child: Row(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/images/product.jpg'),
                          fit: BoxFit.cover,
                        ),
                        // border: Border.all(color: hintText),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nahidat Home Botiq',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Address Goes Here',
                            style: TextStyle(fontSize: 12, color: hintText),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, top: 15),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: secondaryColor,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '4.3',
                      style: TextStyle(color: hintText, fontSize: 18),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/images/product3.jpg'),
                  fit: BoxFit.cover,
                ),
                // border: Border.all(color: hintText),
                // borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Padding(
              padding: const EdgeInsets.only(left:15.0,top:15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Stitch Kurti',style: TextStyle(fontSize: 20),),
                SizedBox(height: 5,),
                Text('₹ 7000.00',style: TextStyle(fontSize: 16,color: textGrey),),
                SizedBox(height: 5,),

                Container(
                  width: 80,
                  height:40,
                  decoration: BoxDecoration(color:Colors.red,
                  borderRadius: BorderRadius.circular(30),
                  ),
                 child:Center(child: Text('New',style: TextStyle(color: white),)),
                )
              ],),
            ),
          Padding(
            padding: const EdgeInsets.only(right:15.0,bottom:25.0),
            child: Icon(Icons.favorite_border_outlined,color: hintText,),
          )
          ],),
              Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, bottom: 20.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Filter by Size',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 50,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: textGrey),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('XXL')),
                    ),
                    Container(
                      width: 50,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: textGrey),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('XL')),
                    ),
                     Container(
                      width: 50,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: textGrey),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('L')),
                    ),
                    Container(
                      width: 50,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: textGrey),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('M')),
                    ),
                    Container(
                      width: 50,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: textGrey),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('S')),
                    ),
                     Container(
                      width: 50,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: textGrey),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(child: Text('XS')),
                    ),
                  ],
                )
             
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:15.0,left:15.0),
            child: Text('Item Descriptions',style: TextStyle(fontSize:20),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15.0,right: 10.0),
            child: Text('A product description is a form of marketing copy used to describe and explain the benefits of your product. In other words, it provides all the information and details of your product on your ecommerce site',
            maxLines: 5,
                      overflow: TextOverflow.ellipsis,
               style: TextStyle(color:textGrey,fontSize:15 ),       
                      ),
          ),
          SizedBox(height:10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Row(
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
           
           GestureDetector(
            onTap: (){
              Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CartScreen()),
                        );
            },
             child: Container(
              width:MediaQuery.of(context).size.width*0.7,
              height:50,
              decoration: BoxDecoration(color: themeColor,
              borderRadius: BorderRadius.circular(10)),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Icon(Icons.card_travel_sharp,color: white,),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left:45.0),
                  child: Text("Add To Cart",style: TextStyle(color: white,fontSize:18,),),
                )
              ]),
             ),
           )
          ],),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: Row(
              children: [
                Text('Review',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                 Icon(
                        Icons.star,
                        color: secondaryColor,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        '4.3',
                        style: TextStyle(color: textGrey, fontSize: 18),
                      ),
                       Text(
                        '(2)',
                        style: TextStyle(color: textGrey, fontSize: 18),
                      ),
              ],
            ),
          ),
          ProductReviewCard(),
SizedBox(height: 20,),
ProductReviewCard(),
SizedBox(height: 20,),
        ]))));
  }
}
