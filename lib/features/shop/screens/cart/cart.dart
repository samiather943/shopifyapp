import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyapp/common/widgets/appbar/app_bar.dart';
import 'package:shopifyapp/features/shop/screens/cart/widgets/cart_widget.dart';
import 'package:shopifyapp/features/shop/screens/checkout/checkout.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: Text('Cart',style: Theme.of(context).textTheme.headlineSmall,), showBackArrow: true,),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(()=> const CheckoutScreen()), child: const Text('Checkout \$250')),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: CartWidget(),
      ),
    );
  }
}

