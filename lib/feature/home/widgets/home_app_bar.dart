import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extensin.dart';

class HomeAppBar {
  //搜索事件
  final VoidCallback? onPressedSerach;
  //添加事件
  final VoidCallback? onPressedAdd;

  HomeAppBar({this.onPressedSerach, this.onPressedAdd});

  backButtonAppbar(BuildContext context, String title,
      {VoidCallback? onPressed}) {
    return AppBar(
      backgroundColor: context.theme.homeAppBarBgColor,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          //上边距
          height: 1.5,
          color: context.theme.homeAppBarTextColor,
        ),
      ),
      centerTitle: true,
      actions: [
        //搜索
        IconButton(
          onPressed: onPressedSerach,
          icon: Icon(
            Icons.search,
            color: context.theme.homeAppBarTextColor,
          ),
        ),
        IconButton(
          onPressed: onPressedAdd,
          icon: Icon(
            Icons.add_circle_outline,
            color: context.theme.homeAppBarTextColor,
          ),
        ),
      ],
    );
  }
}
