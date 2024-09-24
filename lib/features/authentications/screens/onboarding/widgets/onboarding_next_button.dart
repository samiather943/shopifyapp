import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';
import 'package:shopifyapp/utils/device/device_utility.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: (){}, 
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Colors.black),
        child: const Icon(Iconsax.arrow_right_3)
        )
      );
  }
}