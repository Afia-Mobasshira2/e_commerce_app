import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
               //Image
                      Image(image: AssetImage(image),
                      width: THelperFunctions.screenWidth() * 0.4,
                      ),
                     const SizedBox(height: TSizes.spaceBtwSections,),
        
                    //Title & Subtitle
                      Text(title,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
                     const SizedBox(height: TSizes.spaceBtwItems,),
                      Text(SubTitle,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
                     const SizedBox(height: TSizes.spaceBtwItems,),
            
                    //buttons
                    SizedBox(width: double.infinity,
                    child: ElevatedButton(onPressed: onPressed, child: const Text(TTexts.tContinue,),)),
                     const SizedBox(height: TSizes.spaceBtwItems,),
        
            ],
          ),
        ),
      ),
    );
  }
}