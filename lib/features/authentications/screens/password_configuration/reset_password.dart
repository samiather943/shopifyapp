import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyapp/features/authentications/screens/login/login.dart';
import 'package:shopifyapp/utils/constants/image_strings.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';
import 'package:shopifyapp/utils/constants/text_strings.dart';
import 'package:shopifyapp/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=>Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
               Image(image: const AssetImage(TImages.deliveredEmailIllustration),width: THelperFunctions.screenWidth() * 0.6,),
            const SizedBox(height: TSizes.spaceBtwSections),
            Text(TTexts.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text(TTexts.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwSections,),
            SizedBox(
              width: Get.width,
              child: ElevatedButton(onPressed: ()=>Get.offAll(()=>const LoginScreen()), child: const Text(TTexts.done)),
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            SizedBox(
              width: Get.width,
              child: TextButton(onPressed: (){}, child: const Text(TTexts.resendEmail)),
            ),
            ],
          ),
        ),
      ),
    );
  }
}