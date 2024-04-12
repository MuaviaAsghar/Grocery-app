import 'package:flutter/material.dart';

import 'package:groceryapp/onboarding.dart';
import 'package:groceryapp/productdetails.dart';

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
        body: ProductDetail(imagePath: 'assets/images/AppleBig.png',productName: "Natural Red Apple",pricePerKg: "1kg, Price",Price: '\$4.99',
            imageBgPath: 'assets/images/AppleBig.png'),
        
      ),
    );
  }
}
