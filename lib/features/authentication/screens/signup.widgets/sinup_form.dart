import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

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
                  decoration: const InputDecoration(label: Text(TTexts.email),prefixIcon: Icon(Iconsax.direct)),
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
              Row(
                children: [
                  SizedBox(width: 24,height: 24, child: Checkbox(value: true, onChanged: (value){})),
                  const SizedBox(width: TSizes.spaceBtwSections,),
                  Text.rich(
                    TextSpan(children: [
                    TextSpan(text: '${TTexts.iAgreeTo} ',style: Theme.of(context).textTheme.bodySmall),
    
                    TextSpan(text: '${TTexts.privacyPolicy}  ',style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark? TColors.white : TColors.primary,
                    )),
    
                    TextSpan(text: '${TTexts.and} ',style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: '${TTexts.termsOfUse} ',style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark? TColors.white : TColors.primary,
                       )),
                  ]))
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwSections,),
    
              //sign up button
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text(TTexts.createAccount)),)
      ],
      )
    );
  }
}