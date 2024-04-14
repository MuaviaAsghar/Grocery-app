import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groceryapp/card.dart';
import 'package:groceryapp/productdetails.dart';

class BeveragesPage extends StatelessWidget {
  const BeveragesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.filter,color: Colors.black,))],
        title: const Text(
          "Beverages",
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'Gilroy-Bold',
              fontWeight: FontWeight.bold,
              height: 1.8,
              color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, ),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              GestureDetector(onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProductDetail(
                                          imagePath:
                                              'assets/images/AppleBig.png',
                                          productName: "Natural Red Apple",
                                          pricePerKg: "1kg, Price",
                                          price: '\$4.99',
                                          imageBgPath:
                                              'assets/images/AppleBig.png',
                                          productinfo:
                                              'Apples are nutritious. Apples may be good for weight loss. Apples may be good for your heart. As part of a healthful and varied diet.',
                                          nutirients: '''Calories: 104.
Carbs: 28 g.
Fiber: 5 g.
Vitamin C: 10% of the Daily Value (DV)
Copper: 6% of the DV.
Potassium: 5% of the DV.
Vitamin K: 4% of the DV.''',
                                          feautureupdate:
                                              " This feature will be updated soon with list tile view",
                                        )),
                  ); 
              },
                child: const custom_card(
                  perpiece: '355ml ,Price',
                  price: '\$1.99',
                  imagePath: 'assets/images/pepsican.png',
                  nameofproduct: 'Pepsi Can',
                ),
              ),
              const custom_card(
                perpiece: '325ml ,Price',
                price: '\$2.99',
                imagePath: 'assets/images/dietcoke.png',
                nameofproduct: 'Pepsi Can',
              ),
            ]),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                custom_card(
                  perpiece: '2L ,Price',
                  price: '\$15.99',
                  imagePath: 'assets/images/applejuice.png',
                  nameofproduct: ' Apple & Grape Juice',
                ),
                custom_card(
                  perpiece: '2L ,Price',
                  price: '\$15.99',
                  imagePath: 'assets/images/mangojuice.png',
                  nameofproduct: 'Orenge Juice',
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                custom_card(
                  perpiece: '355ml ,Price',
                  price: '\$4.99',
                  imagePath: 'assets/images/cocacola.png',
                  nameofproduct: 'Coca Cola Can',
                ),
                custom_card(
                    imagePath: 'assets/images/cocacola.png',
                    nameofproduct: 'Sprite Can',
                    perpiece: '355ml, Price',
                    price: '\$1.99')
              ],
            )
          ],
        ),
      ),
    );
  }
}
