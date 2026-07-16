import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///---AppBAr----
      appBar: TAppBar(title: Text('Reviews & Ratings')),

      ///---------Body---------
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ratings and reviews are varified and are from people who use the same type of device that you use'),
              SizedBox(height: TSizes.defaultSpace,),

              ///Overall prduct rating
              const TOverallProductRating(),
              RatingBarIndicator(itemB),
            ],
          ),
          ),
      ),
    );
  }
}

