import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class NavigationManu extends StatelessWidget {
  const NavigationManu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(//Obx observer
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          
          destinations: const [
          NavigationDestination(icon:Icon(Iconsax.home,color: Colors.green),label: 'Home',),
          NavigationDestination(icon:Icon(Iconsax.shop,color: Colors.blue),label: 'Store'),
          NavigationDestination(icon:Icon(Iconsax.heart,color: Colors.deepPurple,),label: 'Wishlist'),
          NavigationDestination(icon:Icon(Iconsax.user,color: Colors.orange,),label: 'Profile'),
          ]
           ),
      ),
         body: Container(),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs; ///obs being observed

  final screens = [Container(color: Colors.green),Container(color: Colors.blue),Container(color: Colors.deepPurple),Container(color: Colors.orange,)];
}