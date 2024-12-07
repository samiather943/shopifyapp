import 'package:flutter/material.dart';
import 'package:shopifyapp/common/widgets/brands/brand_card.dart';
import 'package:shopifyapp/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopifyapp/utils/constants/colors.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';
import 'package:shopifyapp/utils/helpers/helper_functions.dart';

class BrandShowCaseWidget extends StatelessWidget {
  const BrandShowCaseWidget({
    super.key, required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(TSizes.md),
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          const BrandCard(showBorder: false),
          const SizedBox(height: TSizes.spaceBtwItems,),
          Row(
            children: images.map((image)=> brandTopProductImageWidget(image, context)).toList()
            
          )
        ],
      ),
    );
  }
  Widget brandTopProductImageWidget(String image, context){
    return Expanded(
                child: RoundedContainer(
                  height: 100,
                  backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
                  margin: const EdgeInsets.only(right: TSizes.sm),
                  padding: const EdgeInsets.all(TSizes.md),
                  child: Image(image: AssetImage(image),fit: BoxFit.contain,),
                ),
              );
  }
}

