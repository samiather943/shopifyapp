import 'package:flutter/material.dart';
import 'package:shopifyapp/common/widgets/appbar/app_bar.dart';
import 'package:shopifyapp/common/widgets/products/ratings/rating_indicator.dart';
import 'package:shopifyapp/features/shop/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:shopifyapp/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: Text('Reviews & Ratings'), showBackArrow: true,),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Ratings and review are verified and are from the people who use the same type of devices that you are.'),

            const SizedBox(height: TSizes.spaceBtwItems,),

            const OverallProductrRatings(),

            const RatingIndicatorWidget(rating: 3.5,),
            Text('12,611', style: Theme.of(context).textTheme.bodySmall,),
            const SizedBox(height: TSizes.spaceBtwSections,),

            const UserReviewCard(),
            const UserReviewCard()
          ],
        ),
      ),
    );
  }
}




