import 'package:flutter/material.dart';
import 'package:flutter_application_2/colors.dart';
import 'package:flutter_application_2/home.screens/ad_address.dart';
import 'package:flutter_application_2/home.screens/enter_verification_code.dart';
import 'package:flutter_application_2/home.screens/login_and_register.dart';
import 'package:flutter_application_2/home.screens/my_home.dart';
import 'package:flutter_application_2/home.screens/one_house_page.dart';
import 'package:flutter_application_2/home.screens/select_address_on_map.dart';
import 'package:flutter_application_2/home.screens/show_on_map.dart';

import 'home.screens/ad_features.dart';
import 'home.screens/advertisement_images.dart';
import 'home.screens/choose_ad_type.dart';
import 'home.screens/choose_ad_type2.dart';
import 'home.screens/choose_ad_type3.dart';
import 'home.screens/register_ad.dart';
import 'home.screens/register_ad_facilities.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Vazirmatn-medium",
        scaffoldBackgroundColor: scaffoldColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHome(),
      routes: {
        "oneHousePage": (context) => const OneHousePage(),
        "logInAndRegister": (context) => const LoginAndRegister(),
        "enterVerificationCode": (context) => const EnterVerificationCode(),
        "showOnMap": (context) => const ShowOnMap(),
        "registerAd": (context) => const RegisterAd(),
        "registerAdFcilities": (context) => const RegisterAdFacilities(),
        "adFeatures": (context) => const AdFeatures(),
        "chooseAdType": (context) => const ChooseAdType(),
        "chooseAdType2": (context) => const ChooseAdType2(),
        "advertisementImages": (context) => const AdvertisementImages(),
        "chooseAdType3": (context) => const ChooseAdType3(),
        "adAddress": (context) => const AdAddress(),
        "selectAddressOnMap": (context) => const SelectAddressOnMap(),
      },
    );
  }
}
