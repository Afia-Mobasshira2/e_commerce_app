import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
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
              Row(
                children: [
                  Expanded(flex: 3,child: Text('4.8',style: Theme.of(context).textTheme.displayLarge,)),
                  Expanded(
                    flex: 7,
                    child: Column(
                    children: [
                      TRatingProgressIndicator(text: '5', value: 1.0,),
                      TRatingProgressIndicator(text: '4', value: 0.8,),
                      TRatingProgressIndicator(text: '3', value: 0.6,),
                      TRatingProgressIndicator(text: '2', value: 0.4,),
                      TRatingProgressIndicator(text: '1', value: 0.2,),
                    ],
                  ))
                ],
              )
            ],
          ),
          ),
      ),
    );
  }
}

