import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class HouseInfo extends StatefulWidget {
  const HouseInfo({super.key});

  @override
  State<HouseInfo> createState() => _HouseInfoState();
}

class _HouseInfoState extends State<HouseInfo> {
  List<String> info = [
    'متراژ',
    'خواب',
    'زیربنا',
    "انباری",
    "آسانسور",
    "پارکینگ"
  ];
  @override
  Widget build(BuildContext context) {
    int crossAxisCount = MediaQuery.of(context).size.width ~/ 90;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          SizedBox(
            child: GridView.count(
                padding: const EdgeInsets.only(top: 6),
                childAspectRatio: 1 / 0.3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 7,
                crossAxisCount: crossAxisCount,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: themeColor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          CupertinoIcons.metronome,
                          color: themeColor,
                          size: 14,
                        ),
                        Text(
                          info[0],
                          style:
                              const TextStyle(fontSize: 13, color: themeColor),
                        ),
                        Text(
                          "112".toPersianDigit(),
                          style: const TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: themeColor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          CupertinoIcons.bed_double,
                          color: themeColor,
                          size: 12,
                        ),
                        Text(
                          info[1],
                          style:
                              const TextStyle(fontSize: 13, color: themeColor),
                        ),
                        Text(
                          "2".toPersianDigit(),
                          style: const TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: themeColor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          CupertinoIcons.textformat_size,
                          color: themeColor,
                          size: 12,
                        ),
                        Text(
                          info[2],
                          style:
                              const TextStyle(fontSize: 13, color: themeColor),
                        ),
                        Text(
                          "112".toPersianDigit(),
                          style: const TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: themeColor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.warehouse_outlined,
                          color: themeColor,
                          size: 17,
                        ),
                        Text(
                          info[3],
                          style:
                              const TextStyle(fontSize: 13, color: themeColor),
                        ),
                        const Icon(
                          Icons.check_rounded,
                          size: 16,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: themeColor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          FontAwesomeIcons.elevator,
                          color: themeColor,
                          size: 11,
                        ),
                        Text(
                          info[4],
                          style:
                              const TextStyle(fontSize: 12, color: themeColor),
                        ),
                        const Icon(
                          Icons.check_rounded,
                          size: 16,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: themeColor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.garage_outlined,
                          color: themeColor,
                          size: 14,
                        ),
                        Text(
                          info[5],
                          style:
                              const TextStyle(fontSize: 12, color: themeColor),
                        ),
                        const Icon(
                          Icons.check_rounded,
                          size: 16,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(247, 247, 247, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("توضیحات ملک"),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "آپارتمان 112 متری دو خوابه با پارکینگ و انباری و حیاط اختصاصی"
                            .toPersianDigit(),
                        style: const TextStyle(
                          height: 1.6,
                          color: Colors.black54,
                          fontSize: 12,
                        ),
                      ),
                      const Text(
                        "بسیار دنج سرویس ایرانی و فرهنگی",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12,
                          height: 1.6,
                        ),
                      ),
                      const Text(
                        "کابینت mdf گاز رومیزی",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12,
                          height: 1.6,
                        ),
                      ),
                      const Text(
                        "حیاط خلوت مسقف",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12,
                          height: 1.6,
                        ),
                      ),
                      const Text(
                        "دارای گاز و آب سرد و گرم برای مطبخ استفاده کردن",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12,
                          height: 1.6,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
