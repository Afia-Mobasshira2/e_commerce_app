import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce_app/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                       SizedBox(
                        height: 80,
                         child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index){
                            return TVerticalImageText(image: TImages.shoeIcon, title: 'Shoes', onTap: (){},);
                          }, 
                           
                          ),
                       )
                    ],
                  ),
                )

              ],
            ),),
          ],
        ),
      ),
    );
  }
}

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key, 
    required this.image, 
    required this.title, 
     this.textColor = TColors.white, 
    this.backgroundColor = TColors.white, 
    this.onTap,
  });

  final String image,title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap : onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
                                 
            ///Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark ? TColors.black : TColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child:  Center(
                child: Image(image: AssetImage(image),fit: BoxFit.cover,color: dark? TColors.light : TColors.dark,),
              ),
            ),
                                 
            //Text
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                'Shoe Category',
                style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}

