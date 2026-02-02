import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
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
              Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child:
                 Column(
                children: [
                  Image(
                     width:THelperFunctions.screenWidth() * 0.8,
                     height: THelperFunctions.screenHeight() * 0.5,
                    image: AssetImage(TImages.onboardingImage1)),
                    Text(
                      TTexts.onBoardingTitle1,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: TSizes.spaceBtwItems),
                    Text(
                      TTexts.onBoardingSubTitle1,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),

                ],
              ),
              ),
            ],
          )
        ],
      ),
    );
  }
}