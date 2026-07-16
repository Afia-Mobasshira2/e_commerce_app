import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
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
                  Text('4.8',style: Theme.of(context).textTheme.displayLarge,),
                  Expanded(child: Column(
                    children: [
                      Row(
                        children: [
                          Text('5',style: Theme.of(context).textTheme.bodyMedium),
                          Expanded(child: 
                          SizedBox(width: TDeviceUtils.getScreenWidth(context) * 0.8,
                          child: LinearProgressIndicator(
                            value: 0.5,
                            minHeight: 11,
                            backgroundColor: TColors.grey,
                            borderRadius: BorderRadius.circular(7),
                            valueColor: const AlwaysStoppedAnimation(TColors.primary),
                          ),
                          )
                          )
                        ],
                      )
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