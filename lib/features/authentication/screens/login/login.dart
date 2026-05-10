import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:TSpacingStyle.paddingWithAppbarHeight,
          child: Column(
            children: [
              ///logo, title a sub-Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(dark? TImages.lightAppLogo : TImages.darkAppLogo),
                    ),
                    Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
                    const SizedBox(height:  TSizes.sm),
                    Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium,)

                ],
              ),

              Form(
                child: Column(
                  children: [
                    //Email
                    TextFormField(
                      decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right),labelText: TTexts.email),
                    ),
                    //Password
                    TextFormField(
                      decoration: const InputDecoration(prefixIcon: Icon(Iconsax.password_check),labelText: TTexts.password),
                    ),
                    const SizedBox(height: TSizes.spaceBtwinputFields / 2,)
                  ],
                ))
            ],),
          ),
      ),
    );
  }
}