import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyapp/common/styles/spacing_styles.dart';
import 'package:shopifyapp/common/widgets/login_signup/form_divider.dart';
import 'package:shopifyapp/common/widgets/login_signup/social_buttons.dart';
import 'package:shopifyapp/features/authentications/screens/login/widgets/login_form.dart';
import 'package:shopifyapp/features/authentications/screens/login/widgets/login_header.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';
import 'package:shopifyapp/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const LoginHeader(),
              const LoginForm(),
              DividerWidget(
                dividerText: TTexts.orSignInWith.capitalize!,
              ),
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
