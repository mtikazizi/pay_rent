import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.screens/chooseAdTypeWidgets/app_bar.dart';
import 'package:flutter_application_2/home.screens/chooseAdTypeWidgets/choose_your_ad_type.dart';
import 'package:flutter_application_2/home.screens/myHomeWidgets/my_bottom_app_bar.dart';

class ChooseAdType extends StatefulWidget {
  const ChooseAdType({super.key});

  @override
  State<ChooseAdType> createState() => _ChooseAdTypeState();
}

class _ChooseAdTypeState extends State<ChooseAdType> {
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
