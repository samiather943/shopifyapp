import 'package:flutter/material.dart';
import 'package:shopifyapp/common/widgets/products/cart/add_remove_button.dart';
import 'package:shopifyapp/common/widgets/products/cart/cart_item.dart';
import 'package:shopifyapp/common/widgets/texts/product_price_text.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';
import 'package:shopifyapp/utils/helpers/helper_functions.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    bool dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          const CartItems(),
          if (showAddRemoveButtons)
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
          if (showAddRemoveButtons)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 70,
                    ),
                    AddRemoveProductQuantity(dark: dark),
                  ],
                ),
                const ProductPriceText(price: '250')
              ],
            )
        ],
      ),
    );
  }
}
