import 'package:flutter/material.dart';
import 'package:shopifyapp/common/widgets/appbar/app_bar.dart';
import 'package:shopifyapp/common/widgets/products/cart/add_remove_button.dart';
import 'package:shopifyapp/common/widgets/products/cart/cart_item.dart';
import 'package:shopifyapp/common/widgets/texts/product_price_text.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';
import 'package:shopifyapp/utils/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBarWidget(title: Text('Cart',style: Theme.of(context).textTheme.headlineSmall,), showBackArrow: true,),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){}, child: const Text('\$250')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
              separatorBuilder: (_,__)=> const SizedBox(height: TSizes.spaceBtwSections,),
              itemCount: 10,
              itemBuilder: (_,index) => Column(
                children: [
                   const CartItems(),
      
                   const SizedBox(height: TSizes.spaceBtwItems,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 70,),
                      AddRemoveProductQuantity(dark: dark),
                        ],
                      ),
      
                      const ProductPriceText(price: '250')
      
                      
                    ],
                   )
                ],
              ),
              ),
      ),
    );
  }
}

