import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/appbar/tabbar.dart';
import 'package:e_commerce_app/common/widgets/brands/brand_show_case.dart';
import 'package:e_commerce_app/common/widgets/brands/t_brand_card.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/t_roundeed_container.dart';
import 'package:e_commerce_app/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Store',style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
          TCartCounterIcon(onPressed: (){}, iconColor: TColors.primary)],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrololed){
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
                  children: [
                    ///Search Box
                    const SizedBox(height: TSizes.spaceBtwItems,),
                    const TSearchContainer(text: '',showBorder: true,showBackground: false, padding: EdgeInsets.zero,),
                    const SizedBox(height: TSizes.spaceBtwSections,),
      
                    //Featured Brands
                    TSectionHeading(title: 'Featured Brands',onPressed: (){}, ),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5,),
      
                    //Brand Grid
                   TGridLayout(
                    itemCount: 4,
                    mainAxisExtent: 80, 
                    itemBuilder: (_, index){
                    return TBrandCard(showBorder: true,);
                   })
                  ],
                ),
                ),

                //Tab
                bottom:const TTabBar(
                  tabs: [
                    Tab(child: Text("Sports"),),
                    Tab(child: Text("Furnitures"),),
                    Tab(child: Text("Electronics"),),
                    Tab(child: Text("Cloths"),),
                    Tab(child: Text("Cosmetics"),),
                  ]),
            ),
          ];
        }, 
        // -- Body -- Tutorial [Section # 3, Video # 8]
  body: TabBarView(
    children: [
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
    ]
      ),
    )
      )
    );
  }
}

