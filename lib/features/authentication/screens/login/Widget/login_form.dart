import 'package:e_commerce_app/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce_app/navigation_manu.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right),suffixIcon: Icon(Icons.email),labelText: TTexts.email),
            ),
            const SizedBox(height: TSizes.spaceBtwinputFields),
            
            //Password
            TextFormField(
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.password_check),suffixIcon: Icon(Iconsax.eye_slash),labelText: TTexts.password),
            ),
            const SizedBox(height: TSizes.spaceBtwinputFields / 2,),
        
    
            //Remember me and Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember me
                Row(
                  children: [
                SizedBox(child: Checkbox(value: true, onChanged: (value){})),
                const Text(TTexts.rememberMe),
                  ],
                ),   
        
            //forget password
            TextButton(onPressed: () => Get.to(() => const ForgetPassword()), child: const Text(TTexts.forgetPassword),),
             ],
        ),
          const SizedBox(height: TSizes.spaceBtwSections,),
        
          //sign In button
          SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.to(() => const NavigationManu()), child: const Text(TTexts.signIn)),),  
          const SizedBox(height: TSizes.spaceBtwItems,),
          
          //Create account button
          SizedBox(width: double.infinity,child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()), child: const Text(TTexts.createAccount)),) , 
         
        
          ]
        )
      )
      );
  }
}