import 'package:flutter/material.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$250', style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2,), 
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$6', style: Theme.of(context).textTheme.labelLarge,)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2,), 
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$6', style: Theme.of(context).textTheme.labelLarge,)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2,), 
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$256', style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2,), 


      ],
    ); 
  }
}