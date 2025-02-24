// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopifyapp/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shopifyapp/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shopifyapp/common/widgets/layouts/grid_layout.dart';
import 'package:shopifyapp/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:shopifyapp/common/widgets/texts/section_heading.dart';
import 'package:shopifyapp/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:shopifyapp/features/shop/screens/home/widgets/home_catogories.dart';
import 'package:shopifyapp/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:shopifyapp/utils/constants/image_strings.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeaderContainer(
                child: Column(
              children: [
                HomeAppBar(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                SearchContainer(
                  text: 'Search in Store',
                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      SectionHeading(
                        title: 'Popular Catogories',
                        showActionButton: false,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      HomeCatogories(),
                      SizedBox(height: TSizes.spaceBtwSections,)
                    ],
                  ),
                )
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const PromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  SectionHeading(title: 'Popular Products',onPressed: (){},),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  GridLayout(itemcount: 4, itemBuilder: (_, index) => const ProductCardVertical())
                  
                 
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
