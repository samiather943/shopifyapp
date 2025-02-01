import 'package:flutter/material.dart';
import 'package:shopifyapp/common/widgets/chips/choixe_chiips.dart';
import 'package:shopifyapp/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopifyapp/common/widgets/texts/product_price_text.dart';
import 'package:shopifyapp/common/widgets/texts/product_title_text.dart';
import 'package:shopifyapp/common/widgets/texts/section_heading.dart';
import 'package:shopifyapp/utils/constants/colors.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';
import 'package:shopifyapp/utils/helpers/helper_functions.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        RoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const SectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Price: ',
                            smallSize: true,
                          ),
                          Text(
                            '\$250',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          const ProductPriceText(price: '175'),
                        ],
                      ),

                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Stock: ',
                            smallSize: true,
                          ),
                          Text(
                            'InStock',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                          ),

                        ],
                      )
                      
                    ],
                  )
                ],
              ),

              const ProductTitleText(title: 'jhaf fjhsafb  asjbfkjsfjk kfjafhkjaskjhasf aj khfjsa kjafh ajskf hskhf', smallSize: true, maxLines: 4,)
            ],
          ),  
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Colors' , showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems /2,),
            Wrap(
              spacing: 8,
              children: [
                ChoixeChiips(text: 'Green', selected: true , onSelected: (value){},),
            ChoixeChiips(text: 'Blue', selected: false , onSelected: (value){}),
            ChoixeChiips(text: 'Yellow', selected: false, onSelected: (value){}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Size', showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems /2,),
            Wrap(
              spacing: 8  ,
              children: [
                ChoixeChiips(text: 'EU 34', selected: true, onSelected: (value){}),
            ChoixeChiips(text: 'EU 54', selected: false, onSelected: (value){}),
            ChoixeChiips(text: 'EU 30', selected: false, onSelected: (value){}),
              ],
            )
          ],
        ),


      ],
    );
  }
}
