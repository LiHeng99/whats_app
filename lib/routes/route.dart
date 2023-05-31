import 'package:flutter/material.dart';
import 'package:whatsapp/feature/auth/pages/login_page.dart';
import 'package:whatsapp/feature/contacts/pages/contacts_page.dart';
import 'package:whatsapp/feature/home/pages/home_page.dart';
import 'package:whatsapp/feature/message/pages/message_page.dart';
import 'package:whatsapp/feature/welcome/pages/welcome_page.dart';

class Routes {
  static const String welcome = 'welcome';
  static const String login = 'login';
  static const String home = 'home';
  static const String message = 'message';
  static const String contacts = 'contacts';

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(builder: (context) => const WelcomePage());
      case login:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case home:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case message:
        return MaterialPageRoute(builder: (context) => const MessagePage());
      case contacts:
        return MaterialPageRoute(builder: (context) => const ContactsPage());
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}'))));
    }
  }
}
