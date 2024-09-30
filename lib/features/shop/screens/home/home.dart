import 'package:flutter/material.dart';
import 'package:shopifyapp/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shopifyapp/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shopifyapp/common/widgets/texts/section_heading.dart';
import 'package:shopifyapp/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:shopifyapp/features/shop/screens/home/widgets/home_catogories.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
                child: Column(
              children: [
                const HomeAppBar(),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                const SearchContainer(
                  text: 'Search in Store',
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      const SectionHeading(
                        title: 'Popular Catogories',
                        showActionButton: false,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      HomeCatogories()
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
