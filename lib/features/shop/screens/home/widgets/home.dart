import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce_app/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:e_commerce_app/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
              children: [
                //AppBar
                THomeAppBar(),
                const SizedBox(height: TSizes.defaultSpace,),

                //Search bar
                TSearchContainer(text: 'Search in Store',),
                const SizedBox(height: TSizes.spaceBtwSections,),

                //Categories
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      TSectionHeading(title: 'Popular Categories',showActionButton: false,textColor: Colors.white,),
                       const SizedBox(height: TSizes.spaceBtwItems,),

                       //Categories
                       THomeCategories()
                    ],
                  ),
                )

              ],
            ),
            ),

            //body
            Padding(
              
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TRoundedImage(imageUrl: TImages.promoBanner1,),
            )
          ],
        ),
      ),
    );
  }
}

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key, 
    this.width, 
    this.height, 
    required this.imageUrl, 
    this.applyImageRadius = true, 
    this.border, 
    this.backgroundColor = TColors.light, 
    this.fit = BoxFit.cover, 
    this.padding, 
    this.isNetworkImage = false, 
    this.onPressed, 
    this.borderRadius = TSizes.md,
  });

  final double? width,height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed; 
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        //width : width,
        //height:height,
        padding: padding,
      decoration: BoxDecoration(border: border,color: backgroundColor,borderRadius: BorderRadius.circular(borderRadius)),
        //color: Colors.red,
      width: double.infinity,
      height: 150, // This strictly forces the layout box height
         
        child: ClipRRect(
          borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) :BorderRadius.zero,
          child:  Image(fit:fit, image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider,
           // fit: BoxFit.contain,     /// 3. This forces the image to crop/scale into the box
           //AssetImage(TImages.promoBanner2)
            ),
          ),
      
        ),
    );
  }
}

