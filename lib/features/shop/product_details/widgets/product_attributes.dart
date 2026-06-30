import 'package:e_commerce_app/common/widgets/chips/choise_chip.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/t_roundeed_container.dart';
import 'package:e_commerce_app/common/widgets/price_title/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// -- Selected Attribute Pricing & Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              /// Title, Price and Stock Staus
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Variation',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ///Price Row
                         Row(
                           children: [
                             SizedBox(
                            width: 60,
                            child:  TProductTitleText(title: 'Price : ', smallSize: true),
                          )  ,

                              /// Actual Price
                              Text(
                              '\$25',
                              style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                              ), 
                              const SizedBox(width: TSizes.spaceBtwItems),
                                                 
                                                 
                              /// Sale Price
                              const TProductPriceText(price: '20',),
                         ],
                    ) ,

                    ///Stock
                         Row(
                          children: [
                            // Matches the width of the price label above
                            const SizedBox(
                              width: 60, 
                              child: TProductTitleText(title: 'Stock : ', smallSize: true),
                            ),
                            Text(
                              'In Stock',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),

                        ///Variation Description
                        const TProductTitleText(title: 'This is the description of the product and it can go upto max 4 lines',
                        smallSize: true,
                        maxLines: 4,
                        )
                      ],
                    ),
                  ),
                 

                  
                
                    ],
                  )
                ],
              ),
          ),
      
        const SizedBox(height: TSizes.spaceBtwSections),

        ///------Attributes----------
        Column(
          children: [
            const TSectionHeading(title: 'Colors'),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            TChoiceChip(text: 'Green', selected: true,),
            
          ],
        )
        //Variation Discription
            ],
          );
       
      
  }
}

