import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.screens/myHomeWidgets/my_bottom_app_bar.dart';

import 'advertisementImagesWidgets/add_advertisement_images.dart';
import 'chooseAdTypeWidgets/app_bar.dart';

class AdvertisementImages extends StatefulWidget {
  const AdvertisementImages({super.key});

  @override
  State<AdvertisementImages> createState() => _AdvertisementImagesState();
}

class _AdvertisementImagesState extends State<AdvertisementImages> {
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
              AddAdvertisementImages(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomAppBar(),
    );
  }
}
