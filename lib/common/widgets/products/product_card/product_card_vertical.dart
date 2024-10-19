import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopifyapp/common/styles/shadows.dart';
import 'package:shopifyapp/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopifyapp/common/widgets/images/rounded_image.dart';
import 'package:shopifyapp/utils/constants/colors.dart';
import 'package:shopifyapp/utils/constants/image_strings.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';
import 'package:shopifyapp/utils/helpers/helper_functions.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [ShadowsStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.white
      ),
      child: Column(
        children: [
          RoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                const RoundedImage(imageUrl: TImages.productImage1, applyImagwRadius: true,),

                Positioned(
                  top: 12,
                  child: RoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                  ),
                ),

                Container(
                  color: dark ? TColors.black.withOpacity(0.9) : TColors.white.withOpacity(0.9),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}