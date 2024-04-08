import 'package:flutter/material.dart';
import 'package:groceryapp/home_screen.dart';

class GoogleLogin extends StatelessWidget {
  const GoogleLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HomeScreen(
                   
                  ),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: const CircleBorder(),
            ),
            child: Image.asset(
              'assets/images/GoogleLogin.png',
              width: 200, // Adjust the width according to your design
              height: 200, // Adjust the height according to your design
            ),
          ),
          Positioned(
            bottom: 16, // Adjust the position according to your design
            child: Image.asset(
              'assets/images/GoogleText.png',
              width: 200, // Adjust the width according to your design
              height: 200, // Adjust the height according to your design
            ),
          ),
        ],
      ),
    );
  }
}

class FacebookLoginButton extends StatelessWidget {
  const FacebookLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(
                   
                  ),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: const CircleBorder(),
            ),
            child: Image.asset(
              'assets/images/facebook.png',
              width: 200, // Adjust the width according to your design
              height: 200, // Adjust the height according to your design
            ),
          ),
        ],
      ),
    );
  }
}
