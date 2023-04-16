import 'package:flutter/material.dart';
import 'package:watch_em_grow/screen/home/home_screen.dart';
import 'package:watch_em_grow/screen/product/top_product.dart';
import 'package:watch_em_grow/screen/profile/profile_screen.dart';
import 'package:watch_em_grow/screen/register/register_screen.dart';
import 'package:watch_em_grow/screen/register/sign_customer.dart';
import 'package:watch_em_grow/screen/store/store_product.dart';

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
      initialRoute: 'customer',
      routes: {
          'register': (context) => const RegisterScreen(),
          'profile': (context) => const ProfileScreen(),
          'home': (context) => const HomeScreen(),
          'topProduct': (context) => const TopProductScreen(),
          'customer': (context) => const CustomerRegisterScreen(),
          'storeproduct': (context) => const StoreProductScreen(),
          
          }
    );
  }
}

