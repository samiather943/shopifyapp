import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyapp/common/widgets/appbar/app_bar.dart';
import 'package:shopifyapp/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopifyapp/common/widgets/products/cart/coupon_widget.dart';
import 'package:shopifyapp/common/widgets/success_screen/success_screen.dart';
import 'package:shopifyapp/features/shop/screens/cart/widgets/cart_widget.dart';
import 'package:shopifyapp/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:shopifyapp/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:shopifyapp/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:shopifyapp/nav_menu.dart';
import 'package:shopifyapp/utils/constants/colors.dart';
import 'package:shopifyapp/utils/constants/image_strings.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';
import 'package:shopifyapp/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBarWidget(
        title: Text(
          'Checkout',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                image: TImages.successfulPaymentIcon,
                title: 'Payment Success',
                subtitle: 'You Item will be shipped soon!',
                onPressed: () => Get.offAll(() => const NavMenu()))),
            child: const Text('Checkout \$250')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const CartWidget(
                showAddRemoveButtons: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const CouponWidget(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              RoundedContainer(
                padding: const EdgeInsets.all(TSizes.md),
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    BillingAmountSection(),
                    // BillingPaymentSection(),
                    SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                    Divider(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    BillingPaymentSection(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    BillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
