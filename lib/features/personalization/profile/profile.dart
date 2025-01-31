import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopifyapp/common/widgets/appbar/app_bar.dart';
import 'package:shopifyapp/common/widgets/images/circular_image.dart';
import 'package:shopifyapp/common/widgets/texts/section_heading.dart';
import 'package:shopifyapp/features/personalization/profile/widgets/profile_menu.dart';
import 'package:shopifyapp/utils/constants/image_strings.dart';
import 'package:shopifyapp/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change  Profile Picture'))
                  ],
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const SectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              ProfileMenu(title: 'Name', value: 'Sami', onPressed: () {}, ),
              ProfileMenu(title: 'Username', value: 'Samiather', onPressed: () {}, ),
              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),


              const SectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),

              ProfileMenu(title: 'userID', value: '21421412x  ',icon: Iconsax.copy, onPressed: () {}, ),
              ProfileMenu(title: 'Email', value: 'Sami@gmail.com', onPressed: () {}, ),
              ProfileMenu(title: 'Phone Number', value: '03333333333', onPressed: () {}, ),
              ProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}, ),
              ProfileMenu(title: 'B-O-B', value: '10-10-2001', onPressed: () {}, ),

              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              Center(
                child: TextButton(onPressed: (){}, child: const Text('Close Account', style: TextStyle(color: Colors.red),)),
              )

            ],
          ),
        ),
      ),
    );
  }
}
