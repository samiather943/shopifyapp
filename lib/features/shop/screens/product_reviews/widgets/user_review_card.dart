import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:shopifyapp/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopifyapp/common/widgets/products/ratings/rating_indicator.dart';
import 'package:shopifyapp/utils/constants/colors.dart';
import 'package:shopifyapp/utils/constants/image_strings.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';
import 'package:shopifyapp/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.userProfileImage1),),
                const SizedBox(width: TSizes.spaceBtwItems,),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge,)
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        Row(
          children: [
            const RatingIndicatorWidget(rating: 4,), 

            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('01 Nov, 2025', style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        const ReadMoreText(
          'fdkjfhbksjdfb  kfjdghfkjhdsafuh disu ukdghfksf khdsfjh jdkhfskhdfshdfkjhsdjfkh sdfjdhfjkhdskjfh dsjkfhjdshfjkdshfkhds dkhfskjhfjdshfjh dsjhfjdshfkjdshf sdjfhkdsjhf ds.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        RoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shopify Store', style: Theme.of(context).textTheme.titleMedium,),
                    Text('02 Feb, 2025', style: Theme.of(context).textTheme.bodyMedium,)
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),

        const ReadMoreText(
          'fdkjfhbksjdfb  kfjdghfkjhdsafuh disu ukdghfksf khdsfjh jdkhfskhdfshdfkjhsdjfkh sdfjdhfjkhdskjfh dsjkfhjdshfjkdshfkhds dkhfskjhfjdshfjh dsjhfjdshfkjdshf sdjfhkdsjhf ds.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
        ),
              ],
            ),
          ),
        ),
                const SizedBox(height: TSizes.spaceBtwSections,),
      ],
    );
  }
}
 