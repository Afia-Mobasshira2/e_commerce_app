import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce_app/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
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
                TSearchContainer()
              ],
            ),),
          ],
        ),
      ),
    );
  }
}

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
          border: Border.all(color: TColors.grey),
        ),
        child: Row(
          children: [
            const Icon(Iconsax.search_normal, color: TColors.darkerGrey,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('Search in Store',style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}



