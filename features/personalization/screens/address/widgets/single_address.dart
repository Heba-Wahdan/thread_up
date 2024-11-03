import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:online_shopping/utils/constants/colors.dart';
import 'package:online_shopping/utils/helpers/helper_functions.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress(
      {super.key,
      required this.selectedAddress,
      required this.name,
      required this.number,
      required this.address});

  final bool selectedAddress;
  final String name;
  final String number;
  final String address;
  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return TCircularContainer(
      showBorder: true,
      width: double.infinity,
      borderColor: selectedAddress ? Colors.transparent : TColors.black,
      backgroundColor: selectedAddress
          ? isDark
              ? TColors.primary
              : TColors.black
          : isDark
              ? TColors.black
              : TColors.white,
      child: Stack(
        children: [
          Positioned(
            top: 3,
            right: 7,
            child: Icon(
              selectedAddress ? Icons.check_circle : null,
              color: TColors.light,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: selectedAddress
                            ? TColors.white
                            : isDark
                                ? TColors.white
                                : TColors.black,
                      ),
                ),
                Text(
                  number,
                  style: TextStyle(
                    color: selectedAddress
                        ? TColors.white
                        : isDark
                            ? TColors.white
                            : TColors.black,
                  ),
                ),
                Text(
                  address,
                  style: TextStyle(
                    color: selectedAddress
                        ? TColors.white
                        : isDark
                            ? TColors.white
                            : TColors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
