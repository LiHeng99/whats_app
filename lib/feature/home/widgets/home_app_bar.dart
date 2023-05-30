import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extensin.dart';

class HomeAppBar {
  backButtonAppbar(BuildContext context, String title,
      {VoidCallback? onPressed}) {
    return AppBar(
      backgroundColor: context.theme.homeAppBarBgColor,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: context.theme.homeAppBarTextColor,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.add,
            color: context.theme.homeAppBarTextColor,
          ),
        ),
      ],
    );
  }
}
