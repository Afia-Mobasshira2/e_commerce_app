import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
            //Padding to give defaul Equal space on all sides in all screen
            child: Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //Image

                  //Title & Subtitle

                  //buttons
                ],
              ),
              ),
      ),
    );
  }
}