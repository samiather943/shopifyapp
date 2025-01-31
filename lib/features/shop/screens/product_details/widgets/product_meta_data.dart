import 'package:flutter/material.dart';
import 'package:shopifyapp/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopifyapp/common/widgets/images/circular_image.dart';
import 'package:shopifyapp/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:shopifyapp/common/widgets/texts/product_price_text.dart';
import 'package:shopifyapp/common/widgets/texts/product_title_text.dart';
import 'package:shopifyapp/utils/constants/colors.dart';
import 'package:shopifyapp/utils/constants/enums.dart';
import 'package:shopifyapp/utils/constants/image_strings.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';
import 'package:shopifyapp/utils/helpers/helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('25%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: TColors.black)),
                    ),

                    const SizedBox(width: TSizes.spaceBtwItems,),

                    Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration:TextDecoration.lineThrough),),
                    const SizedBox(width: TSizes.spaceBtwItems),
                    const ProductPriceText(price: '175' ,isLarge: true,)
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwItems /1.5,),

        const ProductTitleText(title: 'Green Nike Shoes'),
        const SizedBox(height: TSizes.spaceBtwItems /1.5,),


         Row(
           children: [
             const ProductTitleText(title: 'Status'),
             const SizedBox(width: TSizes.spaceBtwItems,),
             Text('In Stock', style:  Theme.of(context).textTheme.titleMedium,)
           ],
         ),
        const SizedBox(height: TSizes.spaceBtwItems /1.5,),

        Row(
          children: [
            CircularImage(image: TImages.shoeIcon,
            width: 32,
            height: 32,
            overlayColor: darkMode ? TColors.white : TColors.black,
            ),
            const BrandTitleTextWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium,),
          ],
        )


      ],
    );
  }
}