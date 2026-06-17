import 'package:e_commerce_app/common/widgets/custom_shapes/container/t_roundeed_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          ///----Price & sale price---
          Row(
            children: [
              /// ---Sale Tag---
              TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
                    child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                  ),

                  ///--------Price-----
                  
            ],
          ),
          ///--Title--
          ///--Stock Status--
          ///---Brand---
      ],
    );
  }
}