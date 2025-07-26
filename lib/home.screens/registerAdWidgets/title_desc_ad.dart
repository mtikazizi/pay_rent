import 'package:flutter/material.dart';
import 'package:flutter_application_2/colors.dart';

class TitleDescAd extends StatefulWidget {
  const TitleDescAd({super.key});

  @override
  State<TitleDescAd> createState() => _TitleDescAdState();
}

class _TitleDescAdState extends State<TitleDescAd> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 180),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "عنوان آگهی",
              style: TextStyle(
                  color: themeColor, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "عنوان میتواند شامل نوع ملک، متراژ ملک و نام محله و منطقه باشد",
              style: TextStyle(fontSize: 13),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              child: TextField(
                cursorColor: Colors.black54,
                cursorHeight: 22,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  filled: true,
                  fillColor: sectionColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "توضیحات",
              style: TextStyle(
                  color: themeColor, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "شرایط اجاره، جزییات و ویژگی های خود را در بخش زیر توضیح دهید.",
              style: TextStyle(fontSize: 13),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              child: TextField(
                maxLines: 7,
                cursorColor: Colors.black54,
                cursorHeight: 22,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  filled: true,
                  fillColor: sectionColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
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
                  onPressed: () => Navigator.pushNamed(context, "registerAdFcilities"),
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
      ),
    );
  }
}
