
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Horigantal Scrollable pages
          PageView(
            children: const [
              onBoardingPage(
                  image: TImages.onboardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubTitle1,
                ),

                 onBoardingPage(
                  image: TImages.onboardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle2,
                ),

                 onBoardingPage(
                  image: TImages.onboardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubTitle3,
                ),
            ],
          ),
        
        // skip button
        const onBoardingSkip(),

        //Dot Navigation SmoothPage Indicator
        onBoardingDotNavigation(),

        //Circular Button
        OnBoardingNextButton()
        ],
      ),
    );
  }
}

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(onPressed: () {  },
      style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor: dark? TColors.primary: Colors.black),
      child: const Icon(Iconsax.arrow_right_3),
        )
      );
  }
}

class onBoardingDotNavigation extends StatelessWidget {
  const onBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() * 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: PageController(), 
        count: 3,
        effect: const ExpandingDotsEffect(activeDotColor: TColors.dark, dotHeight: 6),
        ));
  }
}

