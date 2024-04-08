import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Image.asset('assets/images/AppbarLogo.png'),
          ),
          centerTitle: true,
        ),
        body: Container());
  }
}
