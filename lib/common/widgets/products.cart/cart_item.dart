import 'package:flutter/material.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Image
        TRoundedImage(
        imageUrl: TImages.storeSportsShoe1,
        width: 60,
        height: 60,
        padding: EdgeInsets.all(TSizes.sm),
        backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
    
        //Title,Price ,Size
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              const TBrandTitleTextWithVerifiedIcon(title: 'Nike'),
              const TProductTitleText(title: 'Black Sports shoe', maxLines: 1,),
    
          //Attributes
          Text.rich(
            TextSpan(
              children: [
              TextSpan(text: "Color",style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: "Green",style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(text: "Size",style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: "WR 10",style: Theme.of(context).textTheme.bodyLarge),
              ]
              )
          )
          ],
        )
      ],
    );
  }
}