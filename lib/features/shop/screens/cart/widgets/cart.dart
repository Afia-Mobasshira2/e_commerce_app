import 'package:e_commerce_app/common/widgets/Icons/t_circular_icon.dart';
import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/common/widgets/products_cart/add_remove_button.dart';
import 'package:e_commerce_app/common/widgets/products_cart/cart_item.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,title: Text('Cart',style: Theme.of(context).textTheme.headlineSmall),),
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
          child:
          ListView.separated(
            shrinkWrap: true,
            itemCount: 4,
            separatorBuilder: (_, __) =>  const SizedBox(height: TSizes.defaultSpace,) ,
            itemBuilder: (_,index) => Column(
              children: [
                TCartItem(),
                const SizedBox(height: TSizes.spaceBtwItems),

                Row(
                  children: [
                    const SizedBox(width: 70,),
                    //Add Remove Button
                    TProductQuantityWithAddRemoveButton(),
                    
                  ],
                )
              ],
            ),
          ),
          ),
        ),
    );
  }
}

