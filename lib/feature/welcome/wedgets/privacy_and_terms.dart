import 'package:flutter/widgets.dart';
import 'package:whatsapp/common/extension/custom_theme_extensin.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: 'Read our ',
              style: TextStyle(color: context.theme.greyColor, height: 1.5),
              children: [
                TextSpan(
                  text: 'Privacy Policy',
                  style: TextStyle(color: context.theme.bludColor),
                ),
                const TextSpan(
                  text: '. Tap "Agree and continue" to accept the ',
                  // style: TextStyle(color: Color(0xFF8696A0)),
                ),
                TextSpan(
                  text: 'Terms of Service.',
                  style: TextStyle(color: context.theme.bludColor),
                )
              ])),
    );
  }
}
