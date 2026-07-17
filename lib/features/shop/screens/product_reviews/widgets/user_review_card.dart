import 'package:e_commerce_app/common/widgets/custom_shapes/container/t_roundeed_container.dart';
import 'package:e_commerce_app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(TImages.userProfileImage1),),
                const SizedBox(width: TSizes.defaultSpace,),
                Text('Joe Joli',style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),

          ],
        ),
        
        const SizedBox(height: TSizes.defaultSpace,),

        //Review
        Row(
          children: [
              TRatingBarIndicator(rating: 4),
              const SizedBox(width: TSizes.defaultSpace,),
              Text('05 june 2026',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.defaultSpace,),
        ReadMoreText(
          'The user interface of this app quite intuitive.I was able to navigate and make purchase seamlessly. Great job! ',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
        ),
        const SizedBox(height: TSizes.defaultSpace,),

        //Company Review
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: EdgeInsets.all(TSizes.md),
            child: Column(
                  children: [
                    Row(
          children: [
              TRatingBarIndicator(rating: 4),
              const SizedBox(width: TSizes.defaultSpace,),
              Text('05 june 2026',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.defaultSpace,),
        ReadMoreText(
          'The user interface of this app quite intuitive.I was able to navigate and make purchase seamlessly. Great job! ',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
        ),
                  ],
            ),
            ),
          ),
        const SizedBox(height: TSizes.defaultSpace,),


        ],
    );
  }
}