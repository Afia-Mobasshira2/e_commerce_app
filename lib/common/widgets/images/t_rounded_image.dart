import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key, 
    this.width, 
    this.height, 
    required this.imageUrl, 
    this.applyImageRadius = true, 
    this.border, 
    this.backgroundColor = TColors.light, 
    this.fit = BoxFit.cover, 
    this.padding, 
    this.isNetworkImage = false, 
    this.onPressed, 
    this.borderRadius = TSizes.md,
  });

  final double? width,height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed; 
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width : width,
        height:height,
        padding: padding,
      decoration: BoxDecoration(border: border,color: backgroundColor,borderRadius: BorderRadius.circular(borderRadius)),
        //color: Colors.red,
      // width: double.infinity,
      // height: 150, // This strictly forces the layout box height
         
        child: ClipRRect(
          borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) :BorderRadius.zero,
          child:  Image(fit:fit, image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider,
           // fit: BoxFit.contain,     /// 3. This forces the image to crop/scale into the box
           //AssetImage(TImages.promoBanner2)
            ),
          ),
      
        ),
    );
  }
}

