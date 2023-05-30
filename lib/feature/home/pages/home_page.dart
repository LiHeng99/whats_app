import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extensin.dart';
import 'package:whatsapp/feature/contacts/pages/contacts_page.dart';
import 'package:whatsapp/feature/home/widgets/bottom_navigation.dart';
import 'package:whatsapp/feature/home/widgets/home_app_bar.dart';
import 'package:whatsapp/feature/message/pages/message_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final _pages = [
    MessagePage(),
    ContactsPage(),
    MessagePage(),
    ContactsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar().backButtonAppbar(
        context,
        '微信',
        onPressed: () {},
      ),
      body: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigation(
          onTabSelected: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
