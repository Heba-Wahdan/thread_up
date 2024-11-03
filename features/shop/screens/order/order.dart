import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/appbar/app_bar.dart';
import 'package:online_shopping/features/shop/screens/order/widgets/order_list_items.dart';
import 'package:online_shopping/utils/constants/sizes.dart';

class OderScreen extends StatelessWidget {
  const OderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        titleText: Text("My Orders"),
        showBackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(
          TSizes.defaultSpace,
        ),
        child: TOderListItems(),
      ),
    );
  }
}
