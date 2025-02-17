import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopifyapp/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopifyapp/utils/constants/colors.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';
import 'package:shopifyapp/utils/helpers/helper_functions.dart';

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (_,__) => const SizedBox(height: TSizes.spaceBtwItems,),
      itemBuilder: (_, index)=> RoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          showBorder: true,
          backgroundColor: dark ? TColors.dark : TColors.light,
          child: Column(
                mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Icon(Iconsax.ship),
                  const SizedBox(width: TSizes.spaceBtwItems/2,),
        
               Expanded(
                 child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Processing', style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary, fontWeightDelta: 1),),
                    Text('17/2/2025', style: Theme.of(context).textTheme.headlineSmall),
                  ],
                 ),
               ),
               IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34, size: TSizes.iconSm,))
                ],
              ),
        
              const SizedBox(height: TSizes.spaceBtwItems,), 
        
        
        
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        const Icon(Iconsax.tag),
                        const SizedBox(width: TSizes.spaceBtwItems/2,),
                    
                     Expanded(
                       child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order', style: Theme.of(context).textTheme.labelMedium),
                          Text('[354534]', style: Theme.of(context).textTheme.titleMedium),
                        ],
                       ),
                     ),
                            ],
                    ),
                  ),
        
                  Expanded(
                    child: Row(
                      children: [
                        const Icon(Iconsax.calendar),
                        const SizedBox(width: TSizes.spaceBtwItems/2,),
                    
                     Expanded(
                       child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Shipping Date', style: Theme.of(context).textTheme.labelMedium),
                          Text('18/2/2025', style: Theme.of(context).textTheme.titleMedium),
                        ],
                       ),
                     ),
                            ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
    );
      } 
  }
