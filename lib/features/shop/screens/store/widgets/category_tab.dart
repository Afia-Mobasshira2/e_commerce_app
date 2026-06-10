import 'package:e_commerce_app/common/widgets/brands/brand_show_case.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// -- Brands
            TBrandShowcase(images: [TImages.storeSportsJacket,TImages.storeSportsShoe1,TImages.storeSportsShoe2],)
            //Products
          ]
          )
    );
  }
}