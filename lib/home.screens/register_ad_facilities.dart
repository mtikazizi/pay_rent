import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.screens/registerAdFcilitiesWidgets/app_bar.dart';
import 'myHomeWidgets/my_bottom_app_bar.dart';
import 'registerAdFcilitiesWidgets/facilities.dart';

class RegisterAdFacilities extends StatefulWidget {
  const RegisterAdFacilities({super.key});

  @override
  State<RegisterAdFacilities> createState() => _RegisterAdFacilitiesState();
}

class _RegisterAdFacilitiesState extends State<RegisterAdFacilities> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyAppBar(),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 12, 20, 40),
              child: Facilities(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomAppBar(),
    );
  }
}
