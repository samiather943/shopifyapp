import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:shopifyapp/common/widgets/texts/section_heading.dart';
import 'package:shopifyapp/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:shopifyapp/features/shop/screens/product_details/widgets/product_attributes.dart';

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
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImageSlider(),

            Padding(
              padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  RatingAndShare(),

                  ProductMetaData(),

                  ProductAttributes(),

                  SizedBox(height: TSizes.spaceBtwSections,),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: Text('Checkout')),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,),

                  SectionHeading(title: 'Description', showActionButton: false,),

                  SizedBox(height: TSizes.spaceBtwSections,),

                  ReadMoreText(
                    'hbasbckj bajsk bjasbdkjsab bjbsa kjdbjksahdkjas jhjskahdkjahjdfkah fbj kjagjkfjashfjkhsafjhaskjfghajsgf ajsk jsahjkashfjhsajf ajsfjkashfgjsfjk ajsa jjsfjkhsajfhjkashf akjf',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show More ',
                    trimExpandedText: ' Less ',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  Divider(),
                  SizedBox(height: TSizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionHeading(title: 'Reviews(199)', showActionButton: false,),
                      IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_3, size: 18,))
                    ],
                  ),

                  SizedBox(height: TSizes.spaceBtwSections,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



