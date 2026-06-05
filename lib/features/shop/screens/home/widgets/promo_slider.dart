import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/features/shop/controllers/home_controller.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, 
    required this.banner,
  });

  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
           options: CarouselOptions(viewportFraction: 0.8,onPageChanged: (index, _) => controller.updatePageIndicator(index),
            ),
          items:  banner.map((url) => TRoundedImage(imageUrl: url)).toList(),
        ),
     
     SizedBox(height: TSizes.spaceBtwSections,),
    Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center, // Centering the dots
        children: [
        for(int i = 0;i < banner.length; i ++) 
         TCircularContainer(width: 20, height: 4, margin: EdgeInsets.only(right: 10),backgroundColor: controller.carouselCurrentIndex.value == i ? TColors.primary : TColors.darkerGrey,
         child: const SizedBox(), // Forces the container to render its dimensions
           ),
          ],
         ),
        ),
       ],
     );
  }
}

