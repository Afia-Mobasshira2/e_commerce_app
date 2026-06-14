import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true,title: Text('Profile'),),
      ///Body
      body:  SingleChildScrollView(),
    );
  }
}