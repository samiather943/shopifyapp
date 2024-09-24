import 'package:flutter/material.dart';
import 'package:shopifyapp/features/authentications/screens/onboarding/widgets/onboarding_dot_nav.dart';
import 'package:shopifyapp/features/authentications/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:shopifyapp/features/authentications/screens/onboarding/widgets/onboarding_page.dart';
import 'package:shopifyapp/features/authentications/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:shopifyapp/utils/constants/image_strings.dart';
import 'package:shopifyapp/utils/constants/text_strings.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: const [
              OnboardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnboardingSkip(),
          const OnboardingDotNavigation(),

          const OnboardingNextButton()
        ],
      ),
    );
  }
}



