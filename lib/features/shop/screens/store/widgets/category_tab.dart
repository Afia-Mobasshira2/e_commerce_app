import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// -- Brands
            TBrandShowcase(images: [TImages.storeSportsJacket,TImages.storeSportsShoe1,TImages.storeSportsShoe2],)
            //Products
          ]
          )
      )
    );
  }
}