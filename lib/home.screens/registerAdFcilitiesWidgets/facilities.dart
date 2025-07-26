import 'package:flutter/material.dart';
import 'package:flutter_application_2/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Facilities extends StatefulWidget {
  const Facilities({super.key});

  @override
  State<Facilities> createState() => _FacilitiesState();
}

class _FacilitiesState extends State<Facilities> {
  bool parking = true;
  bool wareHouse = false;
  bool elevator = true;
  bool balcony = true;
  @override
  Widget build(BuildContext context) {
    final newWidth = MediaQuery.of(context).size.width;
    const generalWidth = 450.0;
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 70, 15, 0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            const Icon(
              Icons.add_box_outlined,
              size: 140,
              color: Color.fromRGBO(169, 185, 204, 1.0),
            ),
            const Text(
              "ثبت آگهی",
              style: TextStyle(
                fontSize: 30,
                color: Color.fromRGBO(169, 185, 204, 1.0),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "امکانات",
                  style: TextStyle(
                    color: themeColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (parking == false) {
                            parking = true;
                          } else {
                            parking = false;
                          }
                        });
                      },
                      child: Container(
                        width: 190 * newWidth / generalWidth,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: parking == false
                              ? const Color.fromRGBO(229, 229, 229, 1)
                              : themeColor,
                          border: parking == false
                              ? Border.all(color: Colors.grey)
                              : null,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.car_repair_outlined,
                              color:
                                  parking == true ? Colors.white : Colors.grey,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "پارکینگ",
                              style: TextStyle(
                                  color: parking == true
                                      ? Colors.white
                                      : Colors.grey,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (wareHouse == false) {
                            wareHouse = true;
                          } else {
                            wareHouse = false;
                          }
                        });
                      },
                      child: Container(
                        width: 190 * newWidth / generalWidth,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: wareHouse == false
                              ? const Color.fromRGBO(229, 229, 229, 1)
                              : themeColor,
                          border: wareHouse == false
                              ? Border.all(color: Colors.grey)
                              : null,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.warehouse_rounded,
                              color: wareHouse == true
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "انباری",
                              style: TextStyle(
                                  color: wareHouse == true
                                      ? Colors.white
                                      : Colors.grey,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (elevator == false) {
                            elevator = true;
                          } else {
                            elevator = false;
                          }
                        });
                      },
                      child: Container(
                          width: 190 * newWidth / generalWidth,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: elevator == false
                              ? const Color.fromRGBO(229, 229, 229, 1)
                              : themeColor,
                          border: elevator == false
                              ? Border.all(color: Colors.grey)
                              : null,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.elevator,
                              color:
                                  elevator == true ? Colors.white : Colors.grey,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "آسانسور",
                              style: TextStyle(
                                  color: elevator == true
                                      ? Colors.white
                                      : Colors.grey,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (balcony == false) {
                            balcony = true;
                          } else {
                            balcony = false;
                          }
                        });
                      },
                      child: Container(
    width: 190 * newWidth / generalWidth,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: balcony == false
                              ? const Color.fromRGBO(229, 229, 229, 1)
                              : themeColor,
                          border: balcony == false
                              ? Border.all(color: Colors.grey)
                              : null,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.balcony_rounded,
                              color: balcony == true
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "بالکن",
                              style: TextStyle(
                                  color: balcony == true
                                      ? Colors.white
                                      : Colors.grey,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black54),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("سایر امکانات", style: TextStyle(),),
                      Icon(Icons.more_horiz_rounded)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, "adFeatures"),
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
          ],
        ),
      ),
    );
  }
}
