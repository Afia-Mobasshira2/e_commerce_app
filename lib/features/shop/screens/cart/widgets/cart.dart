import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,title: Text('Cart',style: Theme.of(context).textTheme.headlineSmall),),
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
          child:
          ListView.separated(
            shrinkWrap: true,
            itemCount: 4,
            separatorBuilder: (_, __) =>  const SizedBox(height: TSizes.defaultSpace,) ,
            itemBuilder: (_,index) => Column(
              children: [
                Row(
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
                )
              ],
            ),
          ),
          ),
        ),
    );
  }
}