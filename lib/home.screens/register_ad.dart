import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.screens/myHomeWidgets/my_bottom_app_bar.dart';
import 'package:flutter_application_2/home.screens/registerAdWidgets/my_app_bar.dart';
import 'package:flutter_application_2/home.screens/registerAdWidgets/title_desc_ad.dart';

class RegisterAd extends StatefulWidget {
  const RegisterAd({super.key});

  @override
  State<RegisterAd> createState() => _RegisterAdState();
}

class _RegisterAdState extends State<RegisterAd> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 12, 20, 40),
          child: Column(
            children: [
              MyAppBar(),
              TitleDescAd(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomAppBar(),
    );
  }
}
