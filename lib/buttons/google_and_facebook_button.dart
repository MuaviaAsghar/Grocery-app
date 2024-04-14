import 'package:flutter/material.dart';
import 'package:groceryapp/HomeScreenWithNavigation.dart';
import 'package:groceryapp/home_screen.dart';

class GoogleLogin extends StatelessWidget {
  const GoogleLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: GestureDetector(
        onTap: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreenNavigation()),
              );
        
          
        },
        child: Container(
          width: 400, // Adjust the width according to your design
          height: 200, // Adjust the height according to your design
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/google.png', // Background login button image
                width: 400, // Adjust the width according to your design
                height: 200, // Adjust the height according to your design
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FacebookLoginButton extends StatelessWidget {
  const FacebookLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreenNavigation()),
        );
      },
      child: Container(
        width: 400, // Adjust the width according to your design
        height: 200, // Adjust the height according to your design
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/images/facebook.png', // Background login button image
              width: 400, // Adjust the width according to your design
              height: 200, // Adjust the height according to your design
            ),
            // Text image to overlay
          ],
        ),
      ),
    );
  }
}
