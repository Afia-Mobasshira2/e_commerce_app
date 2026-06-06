import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_commerce_app/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store',style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
        TCartCounterIcon(onPressed: (){}, iconColor: TColors.primary)],
      ),
      body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrololed){
        return[
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
            expandedHeight: 440,

            flexibleSpace: Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  ///Search Box
                  SizedBox(height: TSizes.spaceBtwItems,),
                  TSearchContainer(text: '',showBorder: true,),
                  SizedBox(height: TSizes.spaceBtwSections,),

                ],
              ),
              ),
          ),
        ];
      }, 
      body: Container()),
    );
  }
}