import 'package:flutter/material.dart';
import 'package:food_app/pages/bottom_navbar.dart';
                                          

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodak - Food Delivery',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const BottomNavBarPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
