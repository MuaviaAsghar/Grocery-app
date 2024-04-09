import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              height: 10,
            ), // Add some space between the app bar and the image
            Image.asset(
              'assets/images/Location.png',
              height: 30,
              width: 200,
            ),
            const SizedBox(
              height: 10,
            ), // Add some space between the image and the text field
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
                  fillColor: const Color(
                      0xFFF2F3F2), // Corrected hexadecimal color value
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 35,
                  ), // Removed 'const' before Icon
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: Colors.transparent,
                    ), // Removed 'const' before BorderSide
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: Colors.transparent,
                    ), // Removed 'const' before BorderSide
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(
                height:
                    10), // Add some space between the text field and the banner
            Center(
              child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 10),
                child: Image.asset(
                  'assets/images/banner@2x.png',
                ),
              ),
              
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Exclusive Offer",
                      style: TextStyle(
                        color: Color(0xff181725),
                        fontFamily: 'Gilroy-Regular',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10), // Add some space between the text widgets
                  GestureDetector(onTap: () {
                    
                  },
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
            )

          ],
        ),
        
      ),
    );
  }
}
