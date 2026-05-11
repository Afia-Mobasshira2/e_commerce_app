import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TSocialButton extends StatelessWidget {
  const TSocialButton({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(decoration: BoxDecoration(border: Border.all(color: dark ? TColors.darkGrey: TColors.darkerGrey,),borderRadius: BorderRadius.circular(100)),
        child: IconButton(
          onPressed: (){}, icon: const Image(
            width: TSizes.iconMd,
            height: TSizes.iconMd,
            image: AssetImage(TImages.google),
            )
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Container(decoration: BoxDecoration(border: Border.all(color: dark ? TColors.darkGrey: TColors.darkerGrey,),borderRadius: BorderRadius.circular(100)),
        child: IconButton(
          onPressed: (){}, icon: const Image(
            width: TSizes.iconMd,
            height: TSizes.iconMd,
            image: AssetImage(TImages.facebook),
            )
          ),
        )
      ],
    );
  }
}



