import 'package:flutter/material.dart';
import 'package:shoe_shop/home_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Shopping App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}