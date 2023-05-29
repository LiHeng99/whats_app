import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extensin.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;
  final double? minWidht;

  const CustomIconButton({
    Key? key,
    this.onTap,
    this.icon,
    this.iconColor,
    this.iconSize,
    this.minWidht,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        splashColor: Colors.transparent,
        splashRadius: 22,
        iconSize: 22,
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(minWidth: 40),
        icon: Icon(
          Icons.more_vert,
          color: context.theme.greyColor,
        ));
  }
}
