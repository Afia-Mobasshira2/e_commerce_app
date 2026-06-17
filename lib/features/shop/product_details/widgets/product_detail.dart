import 'package:e_commerce_app/common/widgets/Icons/t_circular_icon.dart';
import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/features/shop/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Scaffold(
        body:  SingleChildScrollView(
        child: Column(
          children: [
            ///-----Product image Silder
            const TProductImageSlider(),

             ///---Product Details
             Padding(padding: EdgeInsets.only(right: TSizes.defaultSpace,left: TSizes.defaultSpace,bottom: TSizes.defaultSpace),
             child: Column(
              children: [
                ///------Rating & Share button------
                Row(
                  children: [
                /// --Rating--
                Row(
                  children: [
                    const Icon(Iconsax.star5,color: Colors.amber,size: 24,),
                    const SizedBox(width: TSizes.spaceBtwItems / 2,),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: '5.0',style: Theme.of(context).textTheme.bodyLarge),
                          const TextSpan(text: '(199)'),
                        ] )
                    )
                  ],
                )
                /// --Share button---
                  ],
                )
                
                /// ---Price,title,stack,brand--
                /// ---Attributes---
                /// --Checking button--
                /// --Discription--
                /// --Reviews--
              ],
             ),
             )
            
          ],
        ),
      ),
    );
  }
}

