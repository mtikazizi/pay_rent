import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.screens/myHomeWidgets/my_bottom_app_bar.dart';
import 'package:flutter_application_2/home.screens/selectAddressOnMapWidgets/add_on_map.dart';

import 'chooseAdTypeWidgets/app_bar.dart';

class SelectAddressOnMap extends StatefulWidget {
  const SelectAddressOnMap({super.key});

  @override
  State<SelectAddressOnMap> createState() => _SelectAddressOnMapState();
}

class _SelectAddressOnMapState extends State<SelectAddressOnMap> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              MyAppBar(),
              AddOnMap(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomAppBar(),
    );
  }
}
