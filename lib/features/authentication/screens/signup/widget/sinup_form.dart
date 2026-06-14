import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widget/terms_conditions_checkbox.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

 
  @override
  Widget build(BuildContext context) {

    return Form(
      child: Column(
        children: [
          // First & Last Name
          Row(
            children: [
              Expanded(    ///textformfield expanded dia wrap na korle create account e click na korle page faka dakdai 
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(label: Text(TTexts.firstName),prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwSections,),
    
               Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(label: Text(TTexts.lastName),prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
              const SizedBox(height: TSizes.spaceBtwSections,),
    
            //User Name
            TextFormField(
                  expands: false,
                  decoration: const InputDecoration(label: Text(TTexts.userName),prefixIcon: Icon(Iconsax.user_edit)),
                ),
              const SizedBox(height: TSizes.spaceBtwSections,),
    
              
                //Email
                TextFormField(
                  decoration: const InputDecoration(label: Text(TTexts.email),prefixIcon: Icon(Iconsax.direct),suffixIcon: Icon(Icons.email)),
                ),
              const SizedBox(height: TSizes.spaceBtwSections,),
                
    
                //Phone Number
                TextFormField(
                  decoration: const InputDecoration(label: Text(TTexts.phoneNo),prefixIcon: Icon(Iconsax.call)),
                ),
              const SizedBox(height: TSizes.spaceBtwSections,),
    
                //Password
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    label: Text(TTexts.password),
                    prefixIcon: Icon(Iconsax.password_check),
                    suffixIcon: Icon(Iconsax.eye_slash)),
                ),
              const SizedBox(height: TSizes.spaceBtwSections,),
    
              //Terms & conditions check box
              const TTermsAndConditionCheckbox(),
              const SizedBox(height: TSizes.spaceBtwSections,),
    
              //sign up button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), 
                child: const Text(TTexts.createAccount)),)
      ],
      )
    );
  }
}

