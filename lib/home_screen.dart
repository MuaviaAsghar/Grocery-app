import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groceryapp/FavouritePage.dart';
import 'package:groceryapp/accountpage.dart';

import 'package:groceryapp/card.dart';
import 'package:groceryapp/cartPage.dart';
import 'package:groceryapp/explorePage.dart';
import 'package:groceryapp/groceries_scroll.dart';
import 'package:groceryapp/nav_bar_icons.dart';
import 'package:groceryapp/const_color.dart';
import 'package:groceryapp/productdetails.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens = [HomeScreen(),ExplorePage(),CartPage(),FavouritePage(),AccountPage()];
  int currentIndex = 0;

  final List<Map<String, String>> cardData = [
    {
      'imagePath': 'assets/images/Banana.png',
      'nameofproduct': 'Organic Banana',
      'perpiece': '7pcs, Priceg',
      'price': '\$4.99',
    },
    {
      'imagePath': 'assets/images/apple.png',
      'nameofproduct': 'Red Apple',
      'perpiece': '1kg, Priceg',
      'price': '\$4.99',
    },
    {
      'imagePath': 'assets/images/BellPepper.png',
      'nameofproduct': 'Bell Pepper Red',
      'perpiece': '1kg, Price',
      'price': '\$4.99',
    },

    // A
    // Add more card data as needed
  ];
final List<Map<String, String>> cardData2 = [
    {
      'imagePath': 'assets/images/Ginger.png',
      'nameofproduct': 'Ginger ',
      'perpiece': '7pcs, Priceg',
      'price': '\$4.99',
    },
    {
      'imagePath': 'assets/images/apple.png',
      'nameofproduct': 'Red Apple',
      'perpiece': '1kg, Priceg',
      'price': '\$4.99',
    },
    {
      'imagePath': 'assets/images/steak.png',
      'nameofproduct': 'Beef Bone',
      'perpiece': '1kg, Price',
      'price': '\$4.99',
    },

    // A
    // Add more card data as needed
  ];
  final List<Map<String, String>> cardData3 = [
    {
      'imagePath': 'assets/images/steak.png',
      'nameofproduct': 'Beef Bone',
      'perpiece': '7pcs, Priceg',
      'price': '\$4.99',
    },
    {
      'imagePath': 'assets/images/Chicken.png',
      'nameofproduct': 'Broiler Chicken ',
      'perpiece': '1kg, Priceg',
      'price': '\$4.99',
    },
    {
      'imagePath': 'assets/images/BellPepper.png',
      'nameofproduct': 'Bell Pepper Red',
      'perpiece': '1kg, Price',
      'price': '\$4.99',
    },

    // A
    // Add more card data as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Image.asset('assets/images/AppbarLogo.png'),
            centerTitle: true,
            pinned: false,
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Image.asset(
                  'assets/images/Location.png',
                  height: 30,
                  width: 200,
                ),
                const SizedBox(height: 10),
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
                      const SizedBox(width: 10),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Image.asset(
                    'assets/images/banner@2x.png',
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: cardData.map((data) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ProductDetail(
                                          imagePath:
                                              'assets/images/AppleBig.png',
                                          productName: "Natural Red Apple",
                                          pricePerKg: "1kg, Price",
                                          Price: '\$4.99',
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
                                        )));
                            // Handle onTap event
                          },
                          child: custom_card(
                            imagePath: data['imagePath']!,
                            nameofproduct: data['nameofproduct']!,
                            perpiece: data['perpiece']!,
                            price: data['price']!,
                          ),
                        );
                      }).toList(),
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
                      const SizedBox(width: 10),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: cardData2.map((data) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ProductDetail(
                                          imagePath:
                                              'assets/images/AppleBig.png',
                                          productName: "Natural Red Apple",
                                          pricePerKg: "1kg, Price",
                                          Price: '\$4.99',
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
                                        )));
                            // Handle onTap event
                          },
                          child: custom_card(
                            imagePath: data['imagePath']!,
                            nameofproduct: data['nameofproduct']!,
                            perpiece: data['perpiece']!,
                            price: data['price']!,
                          ),
                        );
                      }).toList(),
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
                      const SizedBox(width: 10),
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ProductDetail(
                                          imagePath:
                                              'assets/images/AppleBig.png',
                                          productName: "Natural Red Apple",
                                          pricePerKg: "1kg, Price",
                                          Price: '\$4.99',
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
                                        )));
                            // Handle onTap event
                          },
                          child: GroceriesRowWidget(
                            colorinput:
                                const Color(orangeColor).withOpacity(0.15),
                            imagePath: 'assets/images/Pulses.png',
                            productname: 'Pulses',
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ProductDetail(
                                          imagePath:
                                              'assets/images/AppleBig.png',
                                          productName: "Natural Red Apple",
                                          pricePerKg: "1kg, Price",
                                          Price: '\$4.99',
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
                                        )));
                            // Handle onTap event
                          },
                          child: GroceriesRowWidget(
                            colorinput:
                                const Color(greenColor).withOpacity(0.15),
                            imagePath: 'assets/images/Ricebag.png',
                            productname: 'Rice',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: cardData3.map((data) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ProductDetail(
                                          imagePath:
                                              'assets/images/AppleBig.png',
                                          productName: "Natural Red Apple",
                                          pricePerKg: "1kg, Price",
                                          Price: '\$4.99',
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
                                        )));
                            // Handle onTap event
                          },
                          child: custom_card(
                            imagePath: data['imagePath']!,
                            nameofproduct: data['nameofproduct']!,
                            perpiece: data['perpiece']!,
                            price: data['price']!,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF53B175),
        unselectedItemColor: const Color(0xff181725),
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          fontFamily: 'Gilroy',
        ),
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          fontFamily: 'Gilroy',
        ),
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              NavBar.store,
            ),
            label: 'Shop',
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              NavBar.explore,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              NavBar.cart,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              NavBar.favourite,
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              NavBar.account,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
