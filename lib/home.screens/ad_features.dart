import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.screens/featuresAdWidgets/features.dart';
import 'package:flutter_application_2/home.screens/registerAdFcilitiesWidgets/app_bar.dart';

import 'myHomeWidgets/my_bottom_app_bar.dart';

class AdFeatures extends StatefulWidget {
  const AdFeatures({super.key});

  @override
  State<AdFeatures> createState() => _AdFeaturesState();
}

class _AdFeaturesState extends State<AdFeatures> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyAppBar(),
            Features(),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomAppBar(),
    );
  }
}
