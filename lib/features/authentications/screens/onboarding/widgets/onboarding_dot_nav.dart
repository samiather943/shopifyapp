import 'package:flutter/material.dart';
import 'package:shopifyapp/utils/constants/colors.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';
import 'package:shopifyapp/utils/device/device_utility.dart';
import 'package:shopifyapp/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
  final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
            controller: PageController(),
            count: 3,
            effect:  ExpandingDotsEffect(
                activeDotColor: dark ? TColors.light:  TColors.dark, dotHeight: 6)));
  }
}
