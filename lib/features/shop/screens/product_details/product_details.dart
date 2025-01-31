import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:shopifyapp/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:shopifyapp/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:shopifyapp/features/shop/screens/product_details/widgets/rating_sharewidget.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';

import 'package:shopifyapp/utils/helpers/helper_functions.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImageSlider(),

            Padding(
              padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  RatingAndShare(),

                  ProductMetaData()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



