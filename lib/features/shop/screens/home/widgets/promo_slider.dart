
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyapp/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:shopifyapp/common/widgets/images/rounded_image.dart';
import 'package:shopifyapp/features/shop/controllers/home_controller.dart';
import 'package:shopifyapp/utils/constants/colors.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _)=>controller.updatePageIndicator(index)
            
          ),
          items: banners.map((url) => RoundedImage(imageUrl: url)).toList()
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Center(
          child: Obx(
            ()=> Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                
            for(int i=0; i<banners.length; i++)
            CircularContainer(
              width: 20,
              height: 4,
              margin: const EdgeInsets.only(right: 5),
              backgroundColor:  controller.crousalCurrentIndex.value==i? TColors.primary : TColors.grey,
            )
              ],
            ),
          ),
        )
      ],
    );
  }
}
