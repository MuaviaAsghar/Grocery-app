// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:groceryapp/buttons/google_and_facebook_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0.3),
                  child: Container(
                    height: 374.15,
                    width: 413.37,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/GroceryBag.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                  width: 100,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Get your groceries\nwith nectar',
                    style: TextStyle(
                      fontFamily: 'Gilroy-Regular',
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                      height: 1.115,
                      letterSpacing: 0.416,
                    ),
                  ),
                ),
                const SizedBox(
                    height:
                        20), // Add some space between the text and the text field
                const Padding(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: IntlPhoneField(
                    disableLengthCheck: true,
                  ),
                ),
                const SizedBox(
                  height: 90,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Or connect with social media",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF828282),
                          fontFamily: 'Gilroy-Regular',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          height: 1.215,
                        ),
                      )),
                ),
                const SizedBox(height: 90,child: Align(alignment: Alignment.center,child: GoogleLogin(),),),
                const SizedBox(height: 90,child: Align(alignment: Alignment.center,child: FacebookLoginButton(),),)
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
