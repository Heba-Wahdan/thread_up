import 'package:flutter/material.dart';
import 'package:online_shopping/common/widgets/images/rounded_images.dart';
import 'package:online_shopping/utils/constants/image_strings.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TRoundedImage(
        imageUrl: TImages.user,
        height: 50,
        width: 50,
      ),
      title: Text(
        "Heba Elbastawisy",
        style:
            Theme.of(context).textTheme.titleLarge!.apply(color: Colors.white),
      ),
      subtitle: Text(
        "elbastawisyheba@gmail.com",
        style:
            Theme.of(context).textTheme.titleSmall!.apply(color: Colors.white),
      ),
      trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.edit_note,
            color: Colors.white,
          )),
    );
  }
}
