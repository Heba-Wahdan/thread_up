import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/icon/icon_container.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/constants/sizes.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 146,
      padding: const EdgeInsets.all(TSizes.md),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const TIconContainer(
                    height: 40,
                    width: 40,
                    icon: Icons.remove,
                    backgroundColor: TColors.black,
                    color: TColors.white,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Text(
                    "2",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  const TIconContainer(
                    height: 40,
                    width: 40,
                    icon: Icons.add,
                    backgroundColor: TColors.black,
                    color: TColors.white,
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(TSizes.md),
                    backgroundColor: TColors.black,
                    side: const BorderSide(
                      color: TColors.black,
                    )),
                child: const Text("Add To Cart"),
              )
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems / 2,
          ),
          SizedBox(
            width: double.infinity,
            child:
                ElevatedButton(onPressed: () {}, child: const Text("Checkout")),
          ),
        ],
      ),
    );
  }
}
