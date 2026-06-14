import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true,title: Text('Profile'),),
      ///Body
      body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.all(TSizes.defaultSpace),
    child: Column(
      children: [
        /// Profile Picture
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const TCircularImage(image: TImages.user, width: 80, height: 80),
              TextButton(onPressed: () {}, child: const Text('Change Profile Picture')),
            ],
          ),
        ), // SizedBox

        /// Details
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        const Divider(),
        const SizedBox(height: TSizes.spaceBtwItems),
        const TSectionHeading(title: 'Profile Information', showActionButton: false),
        const SizedBox(height: TSizes.spaceBtwItems),

        Row(
          children: [
            Expanded(child: Text('Name', style: Theme.of(context).textTheme.bodySmall, overflow: TextOverflow.ellipsis)),
            Expanded(child: Text('Coding with T', style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis)),
            const Expanded(child: Icon(Iconsax.arrow_right_34, size: 18)),
          ],
        ), // Row
      ],
    ), // Column
  ), // Padding
), // SingleChildScrollView
    );
  }
}