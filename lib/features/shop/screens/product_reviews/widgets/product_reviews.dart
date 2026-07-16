import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///---AppBAr----
      appBar: TAppBar(title: Text('Reviews & Ratings')),

      ///---------Body---------
      body: SingleChildScrollView(
        
      ),
    );
  }
}