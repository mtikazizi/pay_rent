import 'package:flutter/material.dart';

import '../../colors.dart';

class Features extends StatefulWidget {
  const Features({super.key});

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  @override
  Widget build(BuildContext context) {
    final newWidth = MediaQuery.of(context).size.width;
    const generalWidth = 450.0;
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 70, 25, 40),
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
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "ویژگی ها",
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
                    SizedBox(
                      width: 195 * newWidth / generalWidth,
                      child: TextField(
                        cursorColor: Colors.black54,
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          hintText: 'متراژ:  ',
                          hintStyle: const TextStyle(color: Colors.black, fontSize: 16),
                          contentPadding: const EdgeInsets.all(10),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: themeColor,
                              width: 1.5,
                            ),
                          ),
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 195 * newWidth / generalWidth,
                      child: TextField(
                        cursorColor: Colors.black54,
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          hintText: 'سال ساخت:  ',
                          hintStyle: const TextStyle(color: Colors.black, fontSize: 16),
                          contentPadding: const EdgeInsets.all(10),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: themeColor,
                              width: 1.5,
                            ),
                          ),
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 195 * newWidth / generalWidth,
                      child: TextField(
                        cursorColor: Colors.black54,
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          hintText: 'تعداد اتاق:  ',
                          hintStyle: const TextStyle(color: Colors.black, fontSize: 16),
                          contentPadding: const EdgeInsets.all(10),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: themeColor,
                              width: 1.5,
                            ),
                          ),
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 195 * newWidth / generalWidth,
                      child: TextField(
                        cursorColor: Colors.black54,
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          hintText: 'طبقه:  ',
                          hintStyle: const TextStyle(color: Colors.black, fontSize: 16),
                          contentPadding: const EdgeInsets.all(10),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: themeColor,
                              width: 1.5,
                            ),
                          ),
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35,),
                SizedBox(
                  width: newWidth,
                  child: TextField(
                    cursorColor: Colors.black54,
                    cursorHeight: 20,
                    decoration: InputDecoration(
                      hintText: 'اجاره ماهانه(تومان):  ',
                      hintStyle: const TextStyle(color: Colors.black, fontSize: 16),
                      contentPadding: const EdgeInsets.all(10),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: themeColor,
                          width: 1.5,
                        ),
                      ),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: newWidth,
                  child: TextField(
                    cursorColor: Colors.black54,
                    cursorHeight: 20,
                    decoration: InputDecoration(
                      hintText: "ودیعه(تومان):  ",
                      hintStyle: const TextStyle(color: Colors.black, fontSize: 16),
                      contentPadding: const EdgeInsets.all(10),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: themeColor,
                          width: 1.5,
                        ),
                      ),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, "chooseAdType"),
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
