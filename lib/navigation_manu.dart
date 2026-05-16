import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NavigationManu extends StatelessWidget {
  const NavigationManu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: 0,
        destinations: const [
        NavigationDestination(icon:Icon(Iconsax.home,color: Colors.green),label: 'Home',),
        NavigationDestination(icon:Icon(Iconsax.shop,color: Colors.blue),label: 'Store'),
        NavigationDestination(icon:Icon(Iconsax.heart,color: Colors.deepPurple,),label: 'Wishlist'),
        NavigationDestination(icon:Icon(Iconsax.user,color: Colors.orange,),label: 'Profile'),
        ]
         ),
         body: Container(),
    );
  }
}