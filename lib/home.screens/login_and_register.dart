// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_application_2/colors.dart';
import 'package:persian_input/validator/number_validator.dart';

class LoginAndRegister extends StatefulWidget {
  const LoginAndRegister({super.key});

  @override
  State<LoginAndRegister> createState() => _LoginAndRegisterState();
}

final _phoneNumber = TextEditingController();
bool isTrueNumber = false;

class _LoginAndRegisterState extends State<LoginAndRegister> {
  @override
  Widget build(BuildContext context) {
    Future<void> checkPhoneNumber() async {
      if (_phoneNumber.value.text.length == 11) {
        setState(() {
          isTrueNumber = true;
        });
      }
    }

    checkPhoneNumber();
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: themeColor,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 140, 30, 30),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
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
                    height: 190,
                  ),
                  const Text(
                    "ورود و ثبت نام",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "برای ورود و یا ثبت نام در پی رنت شماره موبایل خود را وارد کنید.",
                    style: TextStyle(
                      height: 3,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    textDirection: TextDirection.ltr,
                    controller: _phoneNumber,
                    inputFormatters: [PersianNumberValidator()],
                    cursorColor: themeColor,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 20),
                      enabled: true,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
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
                        backgroundColor: isTrueNumber == false
                            ? const WidgetStatePropertyAll(
                                buttonColor,
                              )
                            : const WidgetStatePropertyAll(themeColor),
                      ),
                      onPressed: () =>
                          Navigator.pushNamed(context, "enterVerificationCode"),
                      child: const Text(
                        "تایید",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
