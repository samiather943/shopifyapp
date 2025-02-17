import 'package:flutter/material.dart';
import 'package:shopifyapp/common/widgets/appbar/app_bar.dart';
import 'package:shopifyapp/features/shop/screens/order/widgets/order_list_items.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: Text('My Orders', style: Theme.of(context).textTheme.headlineSmall,), showBackArrow: true,),

      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: OrderListItems(),
      ),
    );
  }
}