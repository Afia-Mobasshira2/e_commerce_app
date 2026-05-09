import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/rendering.dart';

class TSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppbarHeight = EdgeInsets.only(
            top: TSizes.appBarHeight,
            left: TSizes.defaultSpace,
            bottom: TSizes.defaultSpace,
            right: TSizes.defaultSpace,
          );
}