
import 'package:flutter/material.dart';
import 'package:shopifyapp/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:shopifyapp/utils/constants/image_strings.dart';

class HomeCatogories extends StatelessWidget {
  const HomeCatogories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return VerticalImageText(
              title: 'Shoes',
              image: TImages.shoeIcon,
              onTap: (){},
            );
          }),
    );
  }
}
