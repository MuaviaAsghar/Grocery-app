import 'package:flutter/material.dart';
import 'package:groceryapp/card.dart';
import 'package:groceryapp/const_color.dart';
import 'package:groceryapp/groceries_scroll.dart';
import 'package:groceryapp/nav_bar_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens = [];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Image.asset('assets/images/AppbarLogo.png'),
            centerTitle: true,
            pinned: false, // Hide the app bar on scroll
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                    height:
                        10), // Add some space between the app bar and the image
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
                    height:
                        10), // Add some space between the banner and the cards
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GroceriesRowWidget(
                            colorinput:
                                const Color(orangeColor).withOpacity(0.15),
                            imagePath: 'assets/images/Pulses.png',
                            productname: 'Pulses'),
                        GroceriesRowWidget(
                            colorinput:
                                const Color(greenColor).withOpacity(0.15),
                            imagePath: 'assets/images/Ricebag.png',
                            productname: 'Rice')
                      ],
                    ),
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
                          imagePath: 'assets/images/steak.png',
                          nameofproduct: "Beef Bone",
                          perpiece: "1kg, Price",
                          price: "\$4.99",
                        ),
                        custom_card(
                          imagePath: 'assets/images/Chicken.png',
                          nameofproduct: "Broiler Chicken",
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
                  height: 10,
                )
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
        currentIndex: currentindex,
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
        onTap: (index) => setState(() => currentindex = index),
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
