import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Heading
                   Text(TTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
                   const SizedBox(height: TSizes.spaceBtwItems,),
                   Text(TTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium),
                   const SizedBox(height: TSizes.spaceBtwSections * 2,),

            //Text Field

            //Submit Button

          ],
        ),
      ),
    );
  }
}