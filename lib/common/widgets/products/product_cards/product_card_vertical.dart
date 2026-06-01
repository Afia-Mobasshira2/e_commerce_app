import 'package:e_commerce_app/common/styles/shadows.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/t_roundeed_container.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
  final dark = THelperFunctions.isDarkMode(context);

    //container with shadow padding,color,edges,radius,shadow
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.white,
      ),

      child: Column(
        children: [
          ///Thumbnail,Wishlist button,discount tag
          TRoundedContainer(
          height: 180,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: dark ? TColors.dark : TColors.light,
          child: Stack(
            children: [
              //Thumbnail Image
              TRoundedImage(imageUrl: TImages.productShoe,applyImageRadius: true,),

              //Sale tag
              TRoundedContainer(
                radius: TSizes.sm,
                backgroundColor: TColors.secondary.withOpacity(0.8),
                padding: const EdgeInsets.all(value),
              )
            ],
          ),
          )

          ///Details
        ],
      ),
    );
  }
}