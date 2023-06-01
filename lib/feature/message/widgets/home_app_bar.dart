import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extensin.dart';

class ChatAppBar {
  backButtonAppbar(BuildContext context, String title,
      {VoidCallback? onPressed}) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
          color: context.theme.homeAppBarTextColor,
        ),
      ),
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
            Icons.menu,
            color: context.theme.homeAppBarTextColor,
          ),
        ),
      ],
    );
  }
}
