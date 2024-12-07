import 'package:flutter/material.dart';
import 'package:shopifyapp/common/widgets/brands/brand_show_case.dart';
import 'package:shopifyapp/common/widgets/layouts/grid_layout.dart';
import 'package:shopifyapp/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:shopifyapp/common/widgets/texts/section_heading.dart';
import 'package:shopifyapp/utils/constants/image_strings.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';

class CatogoryTab extends StatelessWidget {
  const CatogoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: Column(
                    children: [
                      const BrandShowCaseWidget(images: [TImages.productImage2,TImages.productImage1,TImages.productImage3,],),
                      const BrandShowCaseWidget(images: [TImages.productImage2,TImages.productImage1,TImages.productImage3,],),
                      const SizedBox(height: TSizes.spaceBtwItems,),
                      SectionHeading(title: 'You might like', showActionButton: true, onPressed: (){},),
                      const SizedBox(height: TSizes.spaceBtwItems  ,),
                      GridLayout(itemcount: 4, itemBuilder: (_,index)=> const ProductCardVertical()),
                      const SizedBox(height: TSizes.spaceBtwSections,)
                    ],
                  ),
                  ),]
    );
  }
}