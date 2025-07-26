import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.screens/chooseAdTypeWidgets2/choose_your_ad_type.dart';
import 'package:flutter_application_2/home.screens/myHomeWidgets/my_bottom_app_bar.dart';

import 'chooseAdTypeWidgets/app_bar.dart';

class ChooseAdType2 extends StatefulWidget {
  const ChooseAdType2({super.key});

  @override
  State<ChooseAdType2> createState() => _ChooseAdType2State();
}

class _ChooseAdType2State extends State<ChooseAdType2> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              MyAppBar(),
              ChooseYourAdType(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomAppBar(),
    );
  }
}
