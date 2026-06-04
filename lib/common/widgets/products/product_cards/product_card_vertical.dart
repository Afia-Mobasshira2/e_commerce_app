import 'package:e_commerce_app/common/styles/shadows.dart';
import 'package:e_commerce_app/common/widgets/Icons/t_circular_icon.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/t_roundeed_container.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
              Positioned( 
                top: 12,
                child: TRoundedContainer(
                  radius: TSizes.sm,
                  backgroundColor: TColors.secondary.withOpacity(0.8),
                  padding: const EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
                  child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                ),
              ),

              //Favorite Icon Button
              const Positioned(
                top: 0,//to push it right
                right: 0,// to push it right
                child: TCircularIcon( icon: Iconsax.heart5 ,color: Colors.red,))
            ],
          ),
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 2,),


          ///Details
          Padding(
            padding: const EdgeInsets.only(left: TSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TProductTitleText(title: 'Navy Blue Nike Air Shoe',smallSize: true,),
                const SizedBox(height: TSizes.spaceBtwItems / 2,),
                Row(
                  children: [
                    Text('Nike',overflow: TextOverflow.ellipsis,maxLines: 1,style: Theme.of(context).textTheme.labelMedium),
                const SizedBox(width: TSizes.xs),
                  const Icon(Iconsax.verify5,color: TColors.primary,size: TSizes.iconXs,)
                  ],
                )
              ],
            ),
            )
        ],
      ),
    );
  }
}

