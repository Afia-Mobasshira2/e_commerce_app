import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_app/common/widgets/login_signup/social_button.dart';
import 'package:e_commerce_app/features/authentication/screens/login/Widget/login_form.dart';
import 'package:e_commerce_app/features/authentication/screens/login/Widget/login_header.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

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
              const TLoginHeader(),

                 const TLoginForm(),

                //Divider
                 TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
                    
                  const SizedBox(height: TSizes.spaceBtwItems,),

                //Footer
                 const TSocialButton()
            ],
            ),
          ),
      ),
    );
  }
}

