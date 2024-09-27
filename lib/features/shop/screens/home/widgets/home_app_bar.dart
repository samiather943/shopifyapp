
import 'package:flutter/material.dart';
import 'package:shopifyapp/common/widgets/appbar/app_bar.dart';
import 'package:shopifyapp/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:shopifyapp/utils/constants/colors.dart';
import 'package:shopifyapp/utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBarWidget(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppbarTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color:TColors.grey),),
          Text(TTexts.homeAppbarSubTitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color:TColors.white),),
        ],
      ),
      actions: [
        CartCounterIcon(onPressed: () { },iconColor: TColors.white,)
      ],
    );
  }
}
