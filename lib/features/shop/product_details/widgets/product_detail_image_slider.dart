import 'package:e_commerce_app/common/widgets/Icons/t_circular_icon.dart';
import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
    children: [
      /// 1. Background with Curved Edges & Main Image
      TCurvedEdgesWidgets(
        child: Container(
          color: dark ? TColors.darkerGrey : TColors.light,
          child: SizedBox(
            height: 400, 
            child: Padding(
              padding: EdgeInsets.all(TSizes.productImageRadius * 2),
              child: Center(
                child: Image(image: AssetImage(TImages.productShoe)),
              ),
            ),
          ),
        ),
      ),
            
            /// 2. Thumbnail Slider (Placed OUTSIDE TCurvedEdgesWidgets so it never gets clipped)
            Positioned(
              right: 0,
              left: 0,
              bottom: 30,
              child: SizedBox(
                height: 80,
                child: Center(
                  child: ListView.separated(
                     itemCount: 8 ,
                     shrinkWrap: true,
                     scrollDirection: Axis.horizontal,
                     physics: const AlwaysScrollableScrollPhysics(),
                     separatorBuilder: (_, __) => const SizedBox(width: TSizes.spaceBtwItems,),
                     itemBuilder: (_, index) => TRoundedImage(
                     width: 80,
                     height: 80,
                     fit: BoxFit.contain,
                     backgroundColor: dark ? TColors.dark : TColors.white,
                     border: Border.all(color: TColors.primary, width: 2),
                     padding: EdgeInsets.all(TSizes.sm),
                     imageUrl: TImages.productShoeDetails3),),
                ),
              ),
            ),
    
    
    /// 3. AppBar
      TAppBar(
        showBackArrow: true,
        actions: [TCircularIcon(icon: Iconsax.heart5, color: Colors.red)],
      )
    ],
  );
}
}