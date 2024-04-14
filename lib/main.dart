import 'package:flutter/material.dart';
import 'package:groceryapp/explorePage.dart';

import 'package:groceryapp/onboarding.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        body: ExplorePage()
        
      ),
    );
  }
}
