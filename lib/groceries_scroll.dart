import 'package:flutter/material.dart';

class GroceriesRowWidget extends StatelessWidget {
  final Color colorinput;
  final String imagePath;
  final String productname;

  const GroceriesRowWidget({
    super.key,
    required this.colorinput,
    required this.imagePath,
    required this.productname,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10),
      child: SizedBox(
        height: 105,
        width: 240,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          color: colorinput,
          shadowColor: Colors.transparent,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Image.asset(
                  imagePath,
                  height: 70,
                  width: 70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  productname,
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Gilroy-Regular',
                    fontWeight: FontWeight.w600,
                    height: 2.45,
                    color: Color(0xff3E423F),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
