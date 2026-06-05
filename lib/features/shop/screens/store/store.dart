import 'package:e_commerce_app/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store',style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
        TCartCounterIcon(onPressed: (){}, iconColor: TColors.primary)],
      ),
    );
  }
}