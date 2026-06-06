import 'package:flutter/material.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      padding: const EdgeInsets.all(TSizes.sm),
      decoration: BoxDecoration(
      color: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
      borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: const AssetImage(TImages.clothIcon)),
      );
  }
}