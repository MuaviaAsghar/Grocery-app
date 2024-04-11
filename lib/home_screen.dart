import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:groceryapp/card.dart';
import 'package:groceryapp/const_color.dart';
import 'package:groceryapp/groceries_scroll.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/AppbarLogo.png'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
                height: 10), // Add some space between the app bar and the image
            Image.asset(
              'assets/images/Location.png',
              height: 30,
              width: 200,
            ),
            const SizedBox(
                height:
                    10), // Add some space between the image and the text field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Search Store',
                  hintStyle: const TextStyle(
                    fontFamily: 'Gilroy-Regular',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  filled: true,
                  fillColor: const Color(0xFFF2F3F2),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 35,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Best Selling",
                      style: TextStyle(
                        color: Color(0xff181725),
                        fontFamily: 'Gilroy-Regular',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: 10), // Add some space between the text widgets
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(
                        color: Color(0xff53B175),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Golroy-Regular',
                      ),
                    ),
                  ),
                ],
              ),
            ), // Add some space between the text field and the banner
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset(
                'assets/images/banner@2x.png',
              ),
            ),
            const SizedBox(
                height: 10), // Add some space between the banner and the cards
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    custom_card(
                      imagePath: 'assets/images/Banana.png',
                      nameofproduct: "Organic Banana",
                      perpiece: "7pcs, Priceg",
                      price: "\$4.99",
                    ),
                    custom_card(
                      imagePath: 'assets/images/apple.png',
                      nameofproduct: "Red Apple",
                      perpiece: "1kg, Priceg",
                      price: '\$4.99',
                    ),
                    custom_card(
                      imagePath: 'assets/images/BellPepper.png',
                      nameofproduct: "Bell Pepper Red",
                      perpiece: "1kg, Price",
                      price: "\$4.99",
                    ),
                    // Add more CustomCard widgets as needed
                  ],
                ),
              ),
            ),
            const SizedBox(
                height:
                    10), // Add some space between the cards and the best selling section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Best Selling",
                      style: TextStyle(
                        color: Color(0xff181725),
                        fontFamily: 'Gilroy-Regular',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: 10), // Add some space between the text widgets
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(
                        color: Color(0xff53B175),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Golroy-Regular',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    custom_card(
                      imagePath: 'assets/images/Ginger.png',
                      nameofproduct: "Ginger",
                      perpiece: "250g, Priceg",
                      price: "\$4.99",
                    ),
                    custom_card(
                      imagePath: 'assets/images/Chicken.png',
                      nameofproduct: "Chicken",
                      perpiece: "1kg, Priceg",
                      price: '\$4.99',
                    ),
                    custom_card(
                      imagePath: 'assets/images/BellPepper.png',
                      nameofproduct: "Bell Pepper Red",
                      perpiece: "1kg, Price",
                      price: "\$4.99",
                    ),
                    // Add more CustomCard widgets as needed
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Groceries",
                      style: TextStyle(
                        color: Color(0xff181725),
                        fontFamily: 'Gilroy-Regular',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: 10), // Add some space between the text widgets
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(
                        color: Color(0xff53B175),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Golroy-Regular',
                      ),
                    ),
                  ),
                ],
              ),
            ), // Add
             SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GroceriesRowWidget(
                      colorinput: const Color(orangeColor).withOpacity(0.15),
                      imagePath: 'assets/images/Pulses.png',
                      productname: 'Pulses'),
                  GroceriesRowWidget(
                      colorinput: const Color(greenColor).withOpacity(0.15),
                      imagePath: 'assets/images/Ricebag.png',
                      productname: 'Rice')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
