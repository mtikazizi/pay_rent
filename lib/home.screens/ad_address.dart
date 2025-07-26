import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.screens/adAddressWidgets/add_address_inputs.dart';
import 'package:flutter_application_2/home.screens/myHomeWidgets/my_bottom_app_bar.dart';

import 'chooseAdTypeWidgets/app_bar.dart';

class AdAddress extends StatefulWidget {
  const AdAddress({super.key});

  @override
  State<AdAddress> createState() => _AdAddressState();
}

class _AdAddressState extends State<AdAddress> {
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
              AddAddressInputs(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomAppBar(),
    );
  }
}
