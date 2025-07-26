import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.screens/myHomeWidgets/my_bottom_app_bar.dart';
import 'chooseAdTypeWidgets/app_bar.dart';
import 'chooseAdTypeWidgets3/choose_your_ad_type.dart';

class ChooseAdType3 extends StatefulWidget {
  const ChooseAdType3({super.key});

  @override
  State<ChooseAdType3> createState() => _ChooseAdType3State();
}

class _ChooseAdType3State extends State<ChooseAdType3> {
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
