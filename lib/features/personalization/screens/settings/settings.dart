import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce_app/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            SizedBox(
              height: 150 ,
              child: TPrimaryHeaderContainer(
                child: Column(
                  children: [
                    TAppBar(title: Text('Account',style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),),),

                    ///----- User Profile Card
                    TUserProfileTile(),
                    const SizedBox(height: TSizes.spaceBtwSections,)
                  ],
                )
              ),
                 ),
                 
                ///-----Body
                const Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: Column(
                    children: [
                      ///---Acount Setting---
                      TSectionHeading(title: 'Account Setting'),
                      SizedBox(height: TSizes.spaceBtwItems,)

                    ],
                  ),
                  ),
                  
           
            ///Body
          ],
        ),
      ),
    );
  }
}

