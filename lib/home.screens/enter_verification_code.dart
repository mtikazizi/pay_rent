import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/colors.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class EnterVerificationCode extends StatefulWidget {
  const EnterVerificationCode({super.key});

  @override
  State<EnterVerificationCode> createState() => _EnterVerificationCodeState();
}

final _verificationCode = TextEditingController();
bool isTrueCode = false;

class _EnterVerificationCodeState extends State<EnterVerificationCode> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: themeColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 160),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/logo/pay-rent-logo-main.png",
                    width: 320,
                  ),
                ),
                const SizedBox(
                  height: 140,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(20, 25, 30, 12),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "کد تایید را وارد کنید",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "کد تایید 5 رقمی برای شماره موبایل 09010184916 ارسال شد."
                              .toPersianDigit(),
                          style: const TextStyle(
                            height: 2.3,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10,
                            left: 50,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 56,
                                height: 56,
                                child: TextField(
                                  cursorColor: themeColor,
                                  cursorHeight: 20,
                                  textAlign: TextAlign.center,
                                  enabled: true,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: containerColor,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 56,
                                height: 56,
                                child: TextField(
                                  cursorColor: themeColor,
                                  cursorHeight: 20,
                                  textAlign: TextAlign.center,
                                  enabled: true,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: containerColor,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 56,
                                height: 56,
                                child: TextField(
                                  cursorColor: themeColor,
                                  cursorHeight: 20,
                                  textAlign: TextAlign.center,
                                  enabled: true,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: containerColor,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 56,
                                height: 56,
                                child: TextField(
                                  cursorColor: themeColor,
                                  cursorHeight: 20,
                                  textAlign: TextAlign.center,
                                  enabled: true,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: containerColor,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 56,
                                height: 56,
                                child: TextField(
                                  autofocus: true,
                                  cursorColor: themeColor,
                                  cursorHeight: 20,
                                  textAlign: TextAlign.center,
                                  enabled: true,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: containerColor,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide:
                                          const BorderSide(color: themeColor),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide:
                                          const BorderSide(color: themeColor),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "ویرایش شماره موبایل",
                                style:
                                    TextStyle(color: themeColor, fontSize: 13),
                              ),
                              Text("1:30".toPersianDigit()),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 18),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                padding: const WidgetStatePropertyAll(
                                  EdgeInsets.symmetric(vertical: 9),
                                ),
                                backgroundColor: isTrueCode == false
                                    ? const WidgetStatePropertyAll(
                                        buttonColor,
                                      )
                                    : const WidgetStatePropertyAll(themeColor),
                              ),
                              onPressed: () => Navigator.pushNamed(
                                  context, "registerAd"),
                              child: const Text(
                                "ورود",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
