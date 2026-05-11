import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Title
              Text(TTexts.signupTitle,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //Form
              Form(
                child: Column(
                  children: [
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
                            decoration: const InputDecoration(label: Text(TTexts.firstName),prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                      ],
                    )
                ],))
            ],
          ),),
      ),
    );
  }
}