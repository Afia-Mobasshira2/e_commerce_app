import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            SizedBox(
              height: 130 ,
              child: TPrimaryHeaderContainer(
                child: Column(
                  children: [
                    TAppBar(title: Text('Account',style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),),),

                    //User Profile Card
                    ListTile(
                      leading: const TCircularImage(image: TImages.user,width: 50,height: 50,padding: 0,),
                      title: Text('Afia Mobasshira',style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
                      subtitle: Text('afiamobasshira2@gmail.com',style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),),
                    trailing: IconButton(onPressed: () {}, icon:const Icon(Iconsax.edit,color: TColors.white ,)),
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections,)
                  ],
                )),
            )
            ///Body
          ],
        ),
      ),
    );
  }
}