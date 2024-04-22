import 'package:fannelance/core/constants.dart';
import 'package:fannelance/models/custom_icons_icons.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: white,
      title: Text(
        title,
        style: TextStyle(
          fontSize: screenWidth / 9.7,
          fontFamily: bold,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class SubAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const SubAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      backgroundColor: white,
      leading: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: IconButton(
          icon: const Icon(
            CustomIcons.backarrow,
          ),
          iconSize: screenWidth / 15,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
