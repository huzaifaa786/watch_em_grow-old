import 'package:flutter/material.dart';
import 'package:watch_em_grow/screen/cart/cart_screen.dart';
import 'package:watch_em_grow/screen/checkout/checkout_screen.dart';
import 'package:watch_em_grow/screen/home/home_screen.dart';
import 'package:watch_em_grow/screen/index/chat_screen.dart';
import 'package:watch_em_grow/screen/index/index_screen.dart';
import 'package:watch_em_grow/screen/index/notification_screen.dart';
import 'package:watch_em_grow/screen/order/order_detail.dart';
import 'package:watch_em_grow/screen/order/order_screen.dart';
import 'package:watch_em_grow/screen/product/product_detail.dart';
import 'package:watch_em_grow/screen/product/top_product.dart';
import 'package:watch_em_grow/screen/profile/profile_screen.dart';
import 'package:watch_em_grow/screen/register/register_screen.dart';
import 'package:watch_em_grow/screen/register/sign_customer.dart';
import 'package:watch_em_grow/screen/store/store_product.dart';
import 'package:watch_em_grow/screen/success/success_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watch Em Grow',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      initialRoute: 'success',
      routes: {
          'register': (context) => const RegisterScreen(),
          'profile': (context) => const ProfileScreen(),
          'home': (context) => const HomeScreen(),
          'topProduct': (context) => const TopProductScreen(),
          'productDetail': (context) => const ProductDetailScreen(),
          'customer': (context) => const CustomerRegisterScreen(),
          'storeproduct': (context) => const StoreProductScreen(),
          'order': (context) => const OrderScreen(),
          'orderDetail': (context) => const OrderDetailScreen(),
          'indexScreen': (context) => const IndexChatScreen(),
          'chatScreen': (context) => const ChatScreen(),
          'notificationScreen': (context) => const NotificationScreen(),
          'cartScreen': (context) => const CartScreen(),
          'checkoutScreen': (context) => const CheckoutScreen(),
          'success': (context) => const SuccessScreen(),
          
          }
    );
  }
}

