import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
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
            TPrimaryHeaderContainer(child: Column(
              children: [
                TAppBar(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(TTexts.homeAppBarTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey),),
                      Text(TTexts.homeAppBarSubTitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
                    ],
                  ),
                  actions: [
                    IconButton(onPressed: (){}, icon: const Icon(Iconsax.shopping_bag,color: TColors.white,)),
                  ],
                )
              ],
            ),),
          ],
        ),
      ),
    );
  }
}

