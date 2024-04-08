import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groceryapp/buttons/get_started.dart';

class Onboard extends StatelessWidget {
  const Onboard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/onboarding.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                'assets/images/CarrotLogo.png',
                height: 56.36,
                width: 48.47,
              ),
            ),
            Positioned(
              top: 570.28, // Adjust this value as needed
              left: 50, // Adjust this value as needed
              child: SizedBox(
                height: MediaQuery.of(context).size.height - 100 ,
                width: MediaQuery.of(context).size.width - 100,
                child: const Text(
                  "Welcome\n to our store",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Gilroy-Light',
                    fontSize: 48,
                    color: Colors.white,
                    height: 1.2, // Adjust the line height as needed
                  ),
                ),
              ),
            ),
            Positioned(
              top: 680, // Adjust this value as needed
              left: 0,
              right: 0,
              child: Text(
                "Get your groceries in as fast as one hour",
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 2.5,
                  fontSize: 16,
                  fontFamily: 'Gilroy-Medium',
                  color:
                      Colors.white.withOpacity(0.7), // Adjust opacity as needed
                ),
              ),
            ),
            const Positioned(
                top: 738.16, left: 0, right: 0, child: GetStartedButton())
          ],
        ),
      ),
    );
  }
}
