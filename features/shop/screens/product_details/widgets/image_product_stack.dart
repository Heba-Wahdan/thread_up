import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/appbar/app_bar.dart';
import 'package:online_shopping/common/widgets/icon/icon_container.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';

class TImageProductStack extends StatelessWidget {
  const TImageProductStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: SizedBox(
          height: 260,
          width: double.infinity,
          child: Image.asset(
            height: 100,
            TImages.productJordanGrey,
          ),
        ),
      ),
      const TAppBar(
        showBackArrow: true,
        actions: [
          TIconContainer(
            icon: Icons.favorite,
            color: Color.fromARGB(255, 218, 66, 58),
          )
        ],
      )
    ]);
  }
}
