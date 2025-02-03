import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:shopifyapp/common/widgets/texts/section_heading.dart';
import 'package:shopifyapp/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:shopifyapp/features/shop/screens/product_details/widgets/product_attributes.dart';

import 'package:shopifyapp/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:shopifyapp/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:shopifyapp/features/shop/screens/product_details/widgets/rating_sharewidget.dart';
import 'package:shopifyapp/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';


class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImageSlider(),

            Padding(
              padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  const RatingAndShare(),

                  const ProductMetaData(),

                  const ProductAttributes(),

                  const SizedBox(height: TSizes.spaceBtwSections,),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: const Text('Checkout')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections,),

                  const SectionHeading(title: 'Description', showActionButton: false,),

                  const SizedBox(height: TSizes.spaceBtwSections,),

                  const ReadMoreText(
                    'hbasbckj bajsk bjasbdkjsab bjbsa kjdbjksahdkjas jhjskahdkjahjdfkah fbj kjagjkfjashfjkhsafjhaskjfghajsgf ajsk jsahjkashfjhsajf ajsfjkashfgjsfjk ajsa jjsfjkhsajfhjkashf akjf',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show More ',
                    trimExpandedText: ' Less ',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeading(title: 'Reviews(199)', showActionButton: false,),
                      IconButton(onPressed: () => Get.to(() => const ProductReviews()), icon: const Icon(Iconsax.arrow_right_3, size: 18,))
                    ],
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



