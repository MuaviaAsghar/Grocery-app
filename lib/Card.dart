
import 'package:flutter/material.dart';

// ignore: camel_case_types
class custom_card extends StatelessWidget {
  final String imagePath;
  final String nameofproduct;
  final String perpiece;
  final String price;

  const custom_card({
    super.key, // Corrected key parameter
    required this.imagePath,
    required this.nameofproduct,
    required this.perpiece,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 173.32,
      height: 248.51,
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 10,
        color: const Color(0x00ffffff),
        shadowColor: Colors.transparent,
        
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 18,
                bottom: 16,
              ),
              child: Image.asset(
                imagePath, // Removed color: Colors.transparent
                height: 80,
                width: 100,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    nameofproduct,
                    style: const TextStyle(
                      color: Color(0xff181725),
                      fontFamily: 'Gilroy-Bold',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.1,
                      height: 1.8,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    perpiece,
                    style: const TextStyle(
                      color: Color(0xff7C7C7C),
                      fontFamily: 'Gilroy-Medium',
                      fontSize: 14,
                      height: 1.8,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 10,right: 10,top: 10 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Gilroy-Regular',
                      height: 1.8,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.1,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset('assets/images/addButton.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
