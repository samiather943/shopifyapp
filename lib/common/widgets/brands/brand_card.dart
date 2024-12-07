
import 'package:flutter/material.dart';
import 'package:shopifyapp/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopifyapp/common/widgets/images/circular_image.dart';
import 'package:shopifyapp/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:shopifyapp/utils/constants/colors.dart';
import 'package:shopifyapp/utils/constants/enums.dart';
import 'package:shopifyapp/utils/constants/image_strings.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';
import 'package:shopifyapp/utils/helpers/helper_functions.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({super.key, required this.showBorder, this.onTap});
  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                        onTap: onTap,
                        
                        child: RoundedContainer(
                        
                          padding: const EdgeInsets.all(TSizes.sm),
                          showBorder: showBorder,
                          backgroundColor: Colors.transparent,
                        
                          child: Row(
                            children: [
                              Flexible(
                                child: CircularImage(
                                  image: TImages.clothIcon,
                                  backgroudColor: Colors.transparent,
                                  overlayColor: THelperFunctions.isDarkMode(context)? TColors.white:TColors.dark),
                              ),
                        
                                const SizedBox(width: TSizes.spaceBtwItems/2,),
                        
                                 Expanded(
                                   child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       const BrandTitleTextWithVerifiedIcon(
                                                           title: 'Nike',
                                                           brandTextSize: TextSizes.large,
                                                         ),
                                                         Text('256 products',
                                                         overflow: TextOverflow.ellipsis,
                                                         style: Theme.of(context).textTheme.labelMedium,)
                                     ],
                                   ),
                                 )
                            ],
                          ),
                        ),
                      );
  }
}