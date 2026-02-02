import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Horigantal Scrollable pages
          PageView(
            children: [
              Column(
                children: [
                  Image(
                     width:THelperFunctions.screenWidth() * 0.8,
                     height: THelperFunctions.screenHeight() * 0.6,
                    image: AssetImage(TImages.onboardingImage1))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}