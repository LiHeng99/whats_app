import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp/common/theme/dark_theme.dart';
import 'package:whatsapp/common/theme/light_theme.dart';
import 'package:whatsapp/feature/auth/pages/login_page.dart';
import 'package:whatsapp/feature/home/pages/home_page.dart';
import 'package:whatsapp/feature/welcome/pages/welcome_page.dart';

//flutter build apk --split-per-abi
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: "WhatsApp Me",
    //   theme: lightTheme(),
    //   darkTheme: darkTheme(),
    //   themeMode: ThemeMode.system,
    //   home: WelcomePage(),
    // );
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
    );
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      // 沉浸式状态栏（仅安卓）
      statusBarColor: Colors.transparent,
      // 沉浸式导航指示器
      systemNavigationBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp Me",
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: HomePage(),
    );
  }
}
