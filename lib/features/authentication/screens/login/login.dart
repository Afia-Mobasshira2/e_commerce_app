import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      //Email
                      TextFormField(
                        decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right),labelText: TTexts.email),
                      ),
                      const SizedBox(height: TSizes.spaceBtwinputFields),
                      
                      //Password
                      TextFormField(
                        decoration: const InputDecoration(prefixIcon: Icon(Iconsax.password_check),labelText: TTexts.password),
                      ),
                      const SizedBox(height: TSizes.spaceBtwinputFields / 2,),
                  

                      //Remember me and Forget Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //Remember me
                          Row(
                            children: [
                          Checkbox(value: true, onChanged: (value){}),
                          const Text(TTexts.rememberMe),
                            ],
                          ),   
                  
                      //forget password
                      TextButton(onPressed: (){}, child: const Text(TTexts.forgetPassword)),
                       ],
                  ),
                    const SizedBox(height: TSizes.spaceBtwSections,),
                  
                    //sign In button
                    SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text(TTexts.signIn)),),  
                    const SizedBox(height: TSizes.spaceBtwItems,),
                    
                    //Create account button
                    SizedBox(width: double.infinity,child: OutlinedButton(onPressed: (){}, child: const Text(TTexts.createAccount)),) , 
                   
                  
                    ]
                  )
                )
                ),

                //Divider
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(child: Divider(color: dark ? TColors.darkGrey: TColors.darkerGrey, thickness: 0.5, indent: 60, endIndent: 5,)),
                    Text(TTexts.orSignInWith.capitalize!,style: Theme.of(context).textTheme.labelMedium,),
                    Flexible(child: Divider(color: dark ? TColors.darkGrey: TColors.darkerGrey, thickness: 0.5, indent: 5, endIndent: 60,))
                  ],
                ),

                //Footer

            ],
            ),
          ),
      ),
    );
  }
}