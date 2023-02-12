import 'package:flutter/material.dart';

import 'home screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //to remove the banner tag
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );

  }
}


