import 'package:e_commerce_app/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key, 
    required this.icon, 
    required this.title, 
    required this.subtitle, 
    this.trailing,
  });

  final IconData icon;
  final String title,subtitle;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,size: 28,color: TColors.primary,),
      title: Text(title,style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subtitle,style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
    );
  }
}