import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:TSpacingStyle.paddingWithAppbarHeight,
          ),
      ),
    );
  }
}