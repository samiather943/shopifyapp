import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyapp/common/widgets/login_signup/form_divider.dart';
import 'package:shopifyapp/common/widgets/login_signup/social_buttons.dart';
import 'package:shopifyapp/features/authentications/screens/signup/widgets/signup_form.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';
import 'package:shopifyapp/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const SignUpForm(),
              DividerWidget(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
