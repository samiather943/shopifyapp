import 'package:flutter/material.dart';
import 'package:shopifyapp/common/widgets/images/rounded_image.dart';
import 'package:shopifyapp/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:shopifyapp/common/widgets/texts/product_title_text.dart';
import 'package:shopifyapp/utils/constants/colors.dart';
import 'package:shopifyapp/utils/constants/image_strings.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';
import 'package:shopifyapp/utils/helpers/helper_functions.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       RoundedImage(
         imageUrl: TImages.productImage1,
         width: 60,
         height: 60,
         padding: const EdgeInsets.all(TSizes.sm),
         backgroudColor: THelperFunctions.isDarkMode(context)? TColors.darkerGrey : TColors.light,
       ),
       const SizedBox(width: TSizes.spaceBtwItems,),
    
       Expanded(
         child: Column(
           mainAxisSize: MainAxisSize.min,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const BrandTitleTextWithVerifiedIcon(title: 'Nike'),
             const Flexible(child: ProductTitleText(title: 'Black Sport Shoes', maxLines: 1,)),
         
             Text.rich(
               
               TextSpan(
                 children: [
                   TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
                   TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
                   TextSpan(text: 'Size ' , style: Theme.of(context).textTheme.bodySmall),
                   TextSpan(text: 'UK 8 ', style: Theme.of(context).textTheme.bodyLarge),
                 ]
               )
             )
           ],
         ),
       )
     ],
    );
  }
}