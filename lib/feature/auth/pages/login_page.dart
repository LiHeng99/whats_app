import 'dart:ffi';

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extensin.dart';
import 'package:whatsapp/common/utils/coloors.dart';
import 'package:whatsapp/common/wedgets/custom_elevated_button.dart';
import 'package:whatsapp/common/wedgets/custom_icon_button.dart';
import 'package:whatsapp/feature/auth/wedgets/custom_text_firld.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController countryNameController;
  late TextEditingController countryCodeController;
  late TextEditingController pheneNumberController;
  showCoutryCodePicker() {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      favorite: ['+86', 'CN'],
      countryListTheme: CountryListThemeData(
        bottomSheetHeight: 600,
        backgroundColor: Theme.of(context).backgroundColor,
        flagSize: 22,
        borderRadius: BorderRadius.circular(20),
        textStyle: TextStyle(
          color: context.theme.greyColor,
        ),
        inputDecoration: InputDecoration(
          labelStyle: TextStyle(
            color: context.theme.greyColor,
          ),
          prefixIcon: const Icon(
            Icons.language,
            color: Coloors.greenDark,
          ),
          hintText: 'Search Country Code or Name',
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: context.theme.greyColor!.withOpacity(0.2),
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Coloors.greenDark,
            ),
          ),
        ),
      ),
      onSelect: (country) {
        countryNameController.text = country.name;
        countryCodeController.text = country.countryCode;
      },
    );
  }

  @override
  void initState() {
    countryNameController = TextEditingController(text: 'China');
    countryCodeController = TextEditingController(text: '86');
    pheneNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    countryNameController.dispose();
    countryCodeController.dispose();
    pheneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          'Enter your phone number',
          style: TextStyle(
            color: context.theme.authAppBarTextColor,
          ),
        ),
        centerTitle: true,
        actions: [CustomIconButton()],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text:
                      'WhatsApp will send an SMS message to verify your phone number.',
                  style: TextStyle(
                    color: context.theme.greyColor,
                    height: 1.5,
                  ),
                  children: [
                    TextSpan(
                      text: ' What\'s my number?',
                      style: TextStyle(
                        color: context.theme.bludColor,
                        height: 1.5,
                      ),
                    )
                  ]),
            ),
          ),
          // CustomTextFirld(),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: CustomTextFirld(
              textAlign: TextAlign.center,
              onTap: showCoutryCodePicker,
              controller: countryNameController,
              readOnly: true,
              suffixIcon: const Icon(
                Icons.arrow_drop_down,
                color: Coloors.greenDark,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                SizedBox(
                  width: 70,
                  child: CustomTextFirld(
                    onTap: showCoutryCodePicker,
                    controller: countryCodeController,
                    prefixText: '+',
                    readOnly: true,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomTextFirld(
                    controller: pheneNumberController,
                    hintText: 'Phone Number',
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Carrier SMS charges may apply',
            style: TextStyle(
              color: context.theme.greyColor,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(
        onPressed: () {},
        text: 'NEXT',
        buttonWidget: 90,
      ),
    );
  }
}
