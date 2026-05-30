import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/features/shop/controllers/home_controller.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
           options: CarouselOptions(
          viewportFraction: 0.8,
          onPageChanged: (index, _) => updatePageIndicator(index),
            ),
          items: const [
           TRoundedImage(imageUrl: TImages.promoBanner1,),
           TRoundedImage(imageUrl: TImages.promoBanner12,),
           TRoundedImage(imageUrl: TImages.promoBanner2,),
           TRoundedImage(imageUrl: TImages.promoBanner3,),
           ],
        ),
     
     SizedBox(height: TSizes.spaceBtwSections,),
    Row(
      mainAxisAlignment: MainAxisAlignment.center, // Centering the dots
      children: [
      for(int i = 0;i < 4; i ++) 
       TCircularContainer(width: 20, height: 4, margin: EdgeInsets.only(right: 10),backgroundColor: Colors.green,
       child: const SizedBox(), // Forces the container to render its dimensions
         ),
        ],
       ),
      ],
     );
  }
}

