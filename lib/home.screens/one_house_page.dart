import 'package:flutter/material.dart';
import 'package:flutter_application_2/colors.dart';
import 'package:flutter_application_2/home.screens/myHomeWidgets/my_bottom_app_bar.dart';
import 'package:flutter_application_2/home.screens/onHousePageWidgets/app_bar.dart';
import 'package:flutter_application_2/home.screens/onHousePageWidgets/house_img_title_price.dart';
import 'package:flutter_application_2/home.screens/onHousePageWidgets/house_info.dart';
import 'package:flutter_application_2/home.screens/onHousePageWidgets/report_and_options.dart';

class OneHousePage extends StatefulWidget {
  const OneHousePage({super.key});

  @override
  State<OneHousePage> createState() => _OneHousePageState();
}

class _OneHousePageState extends State<OneHousePage> {
  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // اپ بار صفحه
              MyAppBar(),
              // عکس و عنوان و قیمت ها
              HouseImgTitlePrice(),
              Divider(
                endIndent: 25,
                indent: 25,
                color: themeColor,
              ),
              // اطلاعات فنی خانه
              HouseInfo(),
              // امکان گزارش دادن و بازدید و نمایش روی نقشه
              ReportAndOptions(),
            ],
          ),
        ),
        bottomNavigationBar: MyBottomAppBar(),
      ),
    );
  }
}
