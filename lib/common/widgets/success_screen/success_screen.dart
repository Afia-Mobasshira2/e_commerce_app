import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppbarHeight * 2,
          child: Column(
            children: [
                    //Image
                    Image(image: AssetImage(TImages.success),
                    width: THelperFunctions.screenWidth() * 0.4,
                    ),
                   const SizedBox(height: TSizes.spaceBtwSections,),

                  //Title & Subtitle
                    Text(TTexts.yourAccountCreatedTitle,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
                   const SizedBox(height: TSizes.spaceBtwItems,),
                    Text(TTexts.yourAccountCreatedSubTitle,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
                   const SizedBox(height: TSizes.spaceBtwItems,),
          
                  //buttons
                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.to(() => LoginScreen()), child: const Text(TTexts.tContinue,),)),
                   const SizedBox(height: TSizes.spaceBtwItems,),
            ],
          ),
          ),
      ),
    );
  }
}