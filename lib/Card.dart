import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String imagePath;

  final String Nameofproduct;

  const CustomCard({
    super.key,
    required this.imagePath,
    required this.Nameofproduct,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 173.32,
        height: 248.51,
        child: Card(
          color: const Color(0x00ffffff),
          shadowColor: Colors.transparent,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Image.asset(
                  color: Colors.transparent,
                  imagePath,
                  height: 80,
                  width: 100,
                ),
              ),
              Text(
                "$Nameofproduct",
                style: const TextStyle(
                    fontFamily: 'Gilroy-Bold',
                    fontSize: 16,
                    
                    letterSpacing: 0.1,
                    height: 1.8),
              )
            ],
          ),
        ),
      ),
    );
  }
}
