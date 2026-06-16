import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

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
            TCurvedEdgesWidgets(
              child: Container(
                color: dark ? TColors.darkerGrey : TColors.light,
                child: Stack(
                  children: [
                      ///Main large image
                     SizedBox(
                      height: 400,child: Padding(
                        padding: EdgeInsets.all(TSizes.productImageRadius *2 ),
                        child: Center(child: Image(image: AssetImage(TImages.productShoe)),
                                             ),
                      ),
                     ),
                     ///---Product Details
                     TRoundedImage(
                      width: 80,
                      imageUrl: TImages.productShoeDetails3)
                  ],
                ),
              )),
            
          ],
        ),
      ),
    );
  }
}