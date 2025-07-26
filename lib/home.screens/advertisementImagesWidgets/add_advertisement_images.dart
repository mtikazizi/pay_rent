import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../colors.dart';

class AddAdvertisementImages extends StatefulWidget {
  const AddAdvertisementImages({super.key});

  @override
  State<AddAdvertisementImages> createState() => _AddAdvertisementImagesState();
}

class _AddAdvertisementImagesState extends State<AddAdvertisementImages> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 130, 25, 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "تصاویر آگهی",
            style: TextStyle(
              color: themeColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "تصاویری از ملک خود را به آگهیتان اضافه کنید تا کاربران بتوانند درک صحیحی از ملک شما داشته باشند.",
            style:
                TextStyle(fontSize: 12.5, height: 1.7, color: Colors.blueGrey),
          ),
          Text(
            "حداقل 3 تصویر از ملک خود را بارگذاری کنید تا آگهیتان بهتر دیده شود"
                .toPersianDigit(),
            style:
                const TextStyle(fontSize: 12.5, height: 1.7, color: Colors.blueGrey),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 45),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.image_outlined,
                            size: 50,
                            color: Colors.grey,
                          ),
                          Text(
                            "تصویر",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.image_outlined,
                            size: 50,
                            color: Colors.grey,
                          ),
                          Text(
                            "تصویر",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.image_outlined,
                            size: 50,
                            color: Colors.grey,
                          ),
                          Text(
                            "تصویر",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.image_outlined,
                            size: 50,
                            color: Colors.grey,
                          ),
                          Text(
                            "تصویر",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.image_outlined,
                            size: 50,
                            color: Colors.grey,
                          ),
                          Text(
                            "تصویر",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.image_outlined,
                            size: 50,
                            color: Colors.grey,
                          ),
                          Text(
                            "تصویر",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: const WidgetStatePropertyAll(Colors.white),
                        padding: const WidgetStatePropertyAll(
                          EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                        ),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(color: Colors.black54),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Icon(Icons.add_a_photo_rounded, color: Colors.black54,),
                          SizedBox(width: 6,),
                          Text("افزودن تصویر", style: TextStyle(color: Colors.black54, fontSize: 16),),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, "chooseAdType3"),
                style: ButtonStyle(
                  padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 7, horizontal: 60),),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(7),),),
                  backgroundColor: const WidgetStatePropertyAll(Colors.deepOrange),
                ),
                child: const Text(
                  "بعدی",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
