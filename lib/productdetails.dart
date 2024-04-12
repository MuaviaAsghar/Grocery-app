import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceryapp/buttons/counterplusandminus.dart';

import 'const_color.dart';

class ProductDetail extends StatefulWidget {
  final String imageBgPath;
  final String imagePath;
  final String productName;
  final String pricePerKg;
  final String Price;
  const ProductDetail({
    super.key,
    required this.imageBgPath,
    required this.imagePath,
    required this.productName,
    required this.pricePerKg,
    required this.Price,
  });

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/whitebg.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 380,
                  decoration: const BoxDecoration(
                    color: Color(0x0ff2f3f2),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Image.asset(
                          widget.imageBgPath,
                          height: 380,
                          color: const Color(0x0ff2f3f2).withOpacity(0.5),
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          widget.imagePath,
                          height: 200,
                          width: 330,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.productName,
                    style: const TextStyle(
                      fontFamily: 'Gilroy-Bold',
                      fontSize: 24,
                      height: 1.8,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.1,
                      color: Color(0xff181725),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorited = !isFavorited;
                      });
                    },
                    child: Icon(
                      isFavorited ? Icons.favorite : Icons.favorite_border,
                      color: isFavorited
                          ? const Color.fromARGB(255, 207, 25, 12)
                          : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.pricePerKg,
                    style: const TextStyle(
                      fontFamily: 'Gilroy-Regular',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      height: 1.8,
                      color: Color(customColor),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CounterPlusMinus(),
                  Text(
                    widget.Price,
                    style: const TextStyle(
                      color: Color(0xff181725),
                      fontSize: 24,
                      fontFamily: 'Gilroy-Bold',
                      height: 1.8,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.1,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              child: Container(
                height: 1,
                color: const Color(0x00e2e2e2).withOpacity(0.7),
              ),
            ),
          ],
         
        ),
      ),
    );
  }
}
