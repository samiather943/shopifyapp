import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopifyapp/features/shop/screens/home/home.dart';
import 'package:shopifyapp/utils/constants/colors.dart';
import 'package:shopifyapp/utils/helpers/helper_functions.dart';

class NavMenu extends StatelessWidget {
  const NavMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =  Get.put(NavController());
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 80,
          elevation: 0,
          backgroundColor: dark?TColors.black:TColors.white,
          indicatorColor: dark?TColors.white.withOpacity(0.1):TColors.black.withOpacity(0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=> controller.selectedIndex.value=index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'WishList'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),body:Obx(()=> controller.screens[controller.selectedIndex.value],)
    );
  }
}

class NavController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screens=[
    const HomeScreen(),
    Container(color: Colors.yellow,),
    Container(color: Colors.red,),
    Container(color: Colors.green,),
    ];
}