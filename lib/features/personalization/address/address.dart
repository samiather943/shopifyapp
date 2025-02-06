import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopifyapp/common/widgets/appbar/app_bar.dart';
import 'package:shopifyapp/features/personalization/address/add_new_addresses.dart';
import 'package:shopifyapp/features/personalization/address/widgets/adress_container_widget.dart';
import 'package:shopifyapp/utils/constants/colors.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()=> Get.to(()=> const AddNewAddressesScreen()),
       backgroundColor: TColors.primary,
       child: const Icon(Iconsax.add, color: TColors.white,),
      ),
     appBar: AppBarWidget(showBackArrow: true, title: Text('Addresses', style: Theme.of(context).textTheme.headlineMedium,),),
     body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            AddressContainerWidget(selectedAddress: true),
            AddressContainerWidget(selectedAddress: false),
          ],
        ),
      ),
     ),
    );
  }
}