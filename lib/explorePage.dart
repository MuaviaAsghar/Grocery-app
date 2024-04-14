import 'package:flutter/material.dart';
import 'package:groceryapp/explorePageCards.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Find Products",
          style: TextStyle(
            fontFamily: 'Gilroy-Bold',
            fontSize: 20,
            height: 1.8,
            color: Color(0xff181725),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ExplorePageCard(productType: 'Frash Fruits \n& Vegetable',
                          imagePathCard: 'assets/images/VegCardExplore.png',
                          colorInputUser: fruitandvegColor,
                        ),
                        ExplorePageCard(productType: 'Cooking Oil \n& Ghee',
                          imagePathCard:
                              'assets/images/CookingoilandGheeExplore.png',
                          colorInputUser: cookingoilColor,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ExplorePageCard(productType: 'Meat & Fish',
                          imagePathCard: 'assets/images/meatandfish.png',
                          colorInputUser: fruitandvegColor,
                        ),
                        ExplorePageCard(productType: 'Bakery & Snacks',
                          imagePathCard:
                              'assets/images/bakeryandsnacks.png',
                          colorInputUser: cookingoilColor,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ExplorePageCard(
                          productType: 'Dairy & Eggs',
                          imagePathCard: 'assets/images/dairyandeggs.png',
                          colorInputUser: fruitandvegColor,
                        ),
                        ExplorePageCard(
                          productType: 'Beverages',
                          imagePathCard:
                              'assets/images/beverages.png',
                          colorInputUser: cookingoilColor,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ExplorePageCard(
                          productType: 'Dairy & Eggs',
                          imagePathCard: 'assets/images/dairyandeggs.png',
                          colorInputUser: fruitandvegColor,
                        ),
                        ExplorePageCard(
                          productType: 'Beverages',
                          imagePathCard: 'assets/images/beverages.png',
                          colorInputUser: cookingoilColor,
                        ),
                      ],
                    ),
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
