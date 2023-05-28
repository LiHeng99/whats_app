import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extensin.dart';
import 'package:whatsapp/common/wedgets/custom_elevated_button.dart';
import 'package:whatsapp/feature/welcome/wedgets/language_button.dart';
import 'package:whatsapp/feature/welcome/wedgets/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        body: Column(
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: Image.asset(
                'assets/images/pngegg.png',
                color: context.theme.circleImageColor,
              ),
            ),
          ),
        ),
        const SizedBox(height: 40),
        Expanded(
          child: Column(
            children: [
              Text(
                'Welcome to WhatsApp',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const PrivacyAndTerms(),
              CustomElevatedButton(
                onPressed: () {},
                text: 'AGREE AND CONTINUE',
              ),
              const SizedBox(height: 50),
              LanguageButton()
            ],
          ),
        )
      ],
    ));
  }
}
