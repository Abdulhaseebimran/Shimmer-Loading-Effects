import 'package:flutter/material.dart';
import 'package:shimmmer_effects/new_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shimmer Loading Effects',
      theme: ThemeData(
      primarySwatch: Colors.blue,
      ),
      home: const NewPage(),
    );
  }
}
