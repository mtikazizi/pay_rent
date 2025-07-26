import 'package:flutter/cupertino.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_application_2/colors.dart';
import 'package:flutter_popup_card/flutter_popup_card.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class ReportAndOptions extends StatefulWidget {
  const ReportAndOptions({super.key});

  @override
  State<ReportAndOptions> createState() => _ReportAndOptionsState();
}

List<String> dates = ["حداکثر کارکرد", "تاریخ تولید"];
String currentDate = dates[0];

class _ReportAndOptionsState extends State<ReportAndOptions> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 15, 30, 10),
      child: Column(
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Icon(
                  CupertinoIcons.exclamationmark_circle,
                  size: 16,
                  color: Colors.orangeAccent,
                ),
              ),
              Text(
                "گزارش کلاهبرداری و رفتار مشکوک",
                style: TextStyle(fontSize: 12),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 11,
                  color: Colors.orangeAccent,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 130,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: const WidgetStatePropertyAll(3),
                      padding: const WidgetStatePropertyAll(
                        EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                      ),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor:
                          const WidgetStatePropertyAll(Colors.orangeAccent),
                    ),
                    onPressed: () => Navigator.pushNamed(context, "showOnMap"),
                    child: const Text(
                      "نمایش روی نقشه",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 130,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: const WidgetStatePropertyAll(3),
                      padding: const WidgetStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 12),
                      ),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor:
                          const WidgetStatePropertyAll(Colors.blue),
                    ),
                    onPressed: () => _accountClicked(),
                    child: const Text(
                      "بازدید از ملک",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  late String message = "hello";
  Future<void> _accountClicked() async {
    final result = await showPopupCard<String>(
      context: context,
      builder: (context) {
        return PopupCard(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: const PopupCardDetails(),
        );
      },
      alignment: Alignment.center,
      useSafeArea: true,
      dimBackground: true,
    );
    if (result == null) return;
    setState(() {
      message = result;
    });
  }
}

class PopupCardDetails extends StatefulWidget {
  const PopupCardDetails({super.key});

  @override
  State<PopupCardDetails> createState() => _PopupCardDetailsState();
}

class _PopupCardDetailsState extends State<PopupCardDetails> {
  void _logoutPressed(BuildContext context) {
    Navigator.of(context).pop('Logout pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: math.min(390, MediaQuery.sizeOf(context).width),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () => _logoutPressed(context),
                icon: const Icon(
                  CupertinoIcons.multiply,
                  size: 18,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "ثبت درخواست بازدید از ملک",
                      style: TextStyle(
                        color: themeColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      " لطفا ساعت بازدید را در بازه های زمانی زیر مشخص کنید تا کارشناسان ما هماهنگی لازم جهت بازدید شما از ملک را انجام دهند.",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                    const Text(
                      " درصورت نیاز به توضیحات در خصوص زمان بازدید از ملک، توضیحات را در کادر زیر بنویسید. در غیر اینصورت درخواست خود را ثبت نمایید.",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 25),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(0, 7, 17, 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: containerColor,
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "بازه زمانی صبح تا ظهر",
                                      style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "از ساعت 9 صبح الی 12:30 بعداز ظهر"
                                          .toPersianDigit(),
                                      style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Radio(
                                  fillColor: const WidgetStatePropertyAll(
                                    Colors.green,
                                  ),
                                  value: dates[0],
                                  groupValue: currentDate,
                                  onChanged: (value) {
                                    setState(() {
                                      currentDate = value.toString();
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(0, 7, 17, 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: containerColor,
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "بازه زمانی بعد از ظهر",
                                      style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "از ساعت 16 الی 19 بعداز ظهر"
                                          .toPersianDigit(),
                                      style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Radio(
                                  fillColor: const WidgetStatePropertyAll(
                                    Colors.green,
                                  ),
                                  value: dates[1],
                                  groupValue: currentDate,
                                  onChanged: (value) {
                                    setState(() {
                                      currentDate = value.toString();
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextField(
                            maxLines: 6,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                            cursorColor: themeColor,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(5),
                              hintText: "توضیحات(اختیاری)",
                              hintStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                              ),
                              filled: true,
                              fillColor: containerColor,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                              backgroundColor:
                                  const WidgetStatePropertyAll(themeColor),
                            ),
                            onPressed: () {},
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.fact_check_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "ثبت درخواست",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
