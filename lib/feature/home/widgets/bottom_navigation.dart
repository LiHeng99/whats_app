import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extensin.dart';
import 'package:whatsapp/common/utils/coloors.dart';

class BottomNavigation extends StatefulWidget {
  final Function(int) onTabSelected;

  BottomNavigation({required this.onTabSelected});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: context.theme.homeAppBarBgColor,
      selectedItemColor: Coloors.greenDark,
      unselectedItemColor: context.theme.homeAppBarTextColor,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble),
          label: '微信',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contacts),
          label: '通讯录',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: '发现',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.perm_identity),
          label: '我',
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        widget.onTabSelected(index);
      },
      selectedIconTheme: IconThemeData(
        color: Coloors.greenDark,
      ),
    );
  }
}
