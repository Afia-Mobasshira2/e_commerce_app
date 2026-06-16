import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

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
                color: dark ? TColors.darkGrey : TColors.light,
                child: Stack(
                  children: [
                      ///Main large image
                      Image(image: AssetImage(TImages.productShoe))
                  ],
                ),
              ))
              ///---Product Details
            ///Main large image
          ],
        ),
      ),
    );
  }
}