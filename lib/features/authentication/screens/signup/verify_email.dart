import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => Get.offAll(() => LoginScreen()), icon: const Icon(CupertinoIcons.clear),)
        ],
      ),
      body: SingleChildScrollView(
            //Padding to give defaul Equal space on all sides in all screen
            child: Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //Image
                    Image(image: AssetImage(TImages.verify),
                    width: THelperFunctions.screenWidth() * 0.6,
                    ),
                   const SizedBox(height: TSizes.spaceBtwSections,),

                  //Title & Subtitle
                    Text(TTexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
                   const SizedBox(height: TSizes.spaceBtwItems,),
                    Text(TTexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
                   const SizedBox(height: TSizes.spaceBtwItems,),
                    Text(TTexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
                   const SizedBox(height: TSizes.spaceBtwSections,),

                  //buttons
                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text(TTexts.tContinue)),),
                   const SizedBox(height: TSizes.spaceBtwItems,),

                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text(TTexts.resendEmail)),)
                ],
              ),
              ),
      ),
    );
  }
}