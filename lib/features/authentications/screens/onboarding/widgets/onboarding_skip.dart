import 'package:flutter/material.dart';
import 'package:shopifyapp/features/authentications/controllers/onboarding_controller.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';
import 'package:shopifyapp/utils/device/device_utility.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
            onPressed: () => OnboardingController.instance.skipPage(),
            child: const Text('Skip')));
  }
}
