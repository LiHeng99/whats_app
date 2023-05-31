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
      backgroundColor: context.theme.homeAppBarBgColor,
      selectedItemColor: context.theme.homeAppBarTextColor,
      unselectedItemColor: context.theme.homeAppBarTextColor,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat,
            color: context.theme.homeAppBarTextColor,
          ),
          backgroundColor: context.theme.homeAppBarBgColor,
          label: Text(
            'Chats',
            style: TextStyle(
              color: Colors.black,
            ),
          ).data,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contacts),
          label: 'Contacts',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.public),
          label: 'Contacts',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      selectedIconTheme: IconThemeData(
        color: Coloors.greenDark,
      ),
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        widget.onTabSelected(index);
      },
    );
  }
}
