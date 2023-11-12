import 'package:flutter/material.dart';
import 'package:avatars/avatars.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'bom',
        style: TextStyle(
          fontFamily: 'TitanOne',
          color: Colors.black,
        )
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart),
        ),
      ],
      // Create avatar from network image with radius 20 and border 2 with color
      leading: Avatar(
        name: 'John Doe',
        placeholderColors: const [Colors.red, Colors.green, Colors.blue],
        border: Border.all(
          color: Colors.transparent,
          width: 2,
        ),
        margin: const EdgeInsets.all(5),
        shape: AvatarShape.circle(30),
      ),
    );
  }
}