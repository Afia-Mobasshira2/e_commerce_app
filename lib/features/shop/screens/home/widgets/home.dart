import 'package:e_commerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      backgroundColor: dark? TColors.black :  Colors.grey[300],
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
                      
                      //Heading
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
              child: Column(
                children: [
                  TPromoSlider(banner: [TImages.promoBanner1, TImages.promoBanner12,TImages.promoBanner2,TImages.promoBanner3,],),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  
                //Popular product
                TGridLayout(itemCount: 4, itemBuilder: (_ , index ) => const TProductCardVertical(),)
                
                ],
              ),
            
            
            ),
          ],
        ),
      ),
    );
  }
}

