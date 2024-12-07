import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopifyapp/common/widgets/appbar/app_bar.dart';
import 'package:shopifyapp/common/widgets/icons/circular_icon.dart';
import 'package:shopifyapp/common/widgets/layouts/grid_layout.dart';
import 'package:shopifyapp/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:shopifyapp/features/shop/screens/home/home.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';
import 'package:shopifyapp/utils/helpers/helper_functions.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
        final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBarWidget(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          CircularIcon(dark: dark, icon: Iconsax.add, onPressed: ()=> Get.to(const HomeScreen()),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: GridLayout(itemcount: 6, itemBuilder: (_,index)=>const ProductCardVertical()),
        ),
      ),
    );
  }
}