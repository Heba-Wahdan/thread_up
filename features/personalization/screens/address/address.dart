import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shopping/common/widgets/appbar/app_bar.dart';
import 'package:online_shopping/features/personalization/screens/address/add_new_address.dart';
import 'package:online_shopping/features/personalization/screens/address/widgets/single_address.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const AddNewAddress());
        },
        backgroundColor: isDark ? TColors.primary : TColors.black,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: const TAppBar(
        titleText: Text(
          "My Addresses",
        ),
        showBackArrow: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TSingleAddress(
                selectedAddress: true,
                name: "John Doe",
                number: "(+123) 456 7890",
                address: "82356 Timmy Coves, South Liana, Maine,87665, USA",
              ),
              SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              TSingleAddress(
                  selectedAddress: false,
                  name: "Heba Elbastawisy",
                  number: "015227372795",
                  address: "Bahnhofstraße 21, 94469, Deggendorf")
            ],
          ),
        ),
      ),
    );
  }
}
