import 'package:flutter/material.dart';
import 'package:flutter_application_2/colors.dart';
import 'dart:math' as math;
import 'package:flutter_popup_card/flutter_popup_card.dart';

class AddOnMap extends StatefulWidget {
  const AddOnMap({super.key});

  @override
  State<AddOnMap> createState() => _AddOnMapState();
}

class _AddOnMapState extends State<AddOnMap> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "موقعیت مکانی ملک",
                style: TextStyle(
                  color: themeColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "موقعیت ملک خود را روی نقشه مشخص کنید تا کاربران محل ملک را در نقشه مشاهده کنند",
                style: TextStyle(
                    fontSize: 12.5, height: 1.7, color: Colors.blueGrey),
              ),
            ],
          ),
        ),
        Image.asset(
          "assets/images/map.jpg",
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(Colors.white),
                padding: const WidgetStatePropertyAll(
                  EdgeInsets.symmetric(
                    horizontal: 35,
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
              child: const Text(
                "ویرایش موقعیت",
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 30, left: 25, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () => _accountClicked(),
                style: ButtonStyle(
                  padding: const WidgetStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 7, horizontal: 65),
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  backgroundColor:
                      const WidgetStatePropertyAll(Colors.deepOrange),
                ),
                child: const Text(
                  "ثبت",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ],
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
            borderRadius: BorderRadius.circular(20),
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
          maxHeight: 280,
          maxWidth: math.min(390, MediaQuery.sizeOf(context).width),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 30, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "آگهی شما ثبت شد",
                style: TextStyle(color: themeColor, fontSize: 19),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "نتیجه آگهی پس از برسی اطلاعات از طریق پیامک به شما ارسال خواهد شد.",
                style: TextStyle(
                    fontSize: 12.5, height: 1.7, color: Colors.blueGrey),
              ),
              Text(
                "شما میتوانید در هر مرحله وضعیت آگهی های خود را در تب داشبورد مشاهده نمایید و یا درصورت نیاز آگهی خود را ویرایش نمایید.",
                style: TextStyle(
                    fontSize: 12.5, height: 1.7, color: Colors.blueGrey),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      padding: WidgetStatePropertyAll(
                        EdgeInsets.symmetric(vertical: 7, horizontal: 70),
                      ),
                      backgroundColor: WidgetStatePropertyAll(
                        (Color.fromRGBO(53, 101, 178, 1)),
                      ),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "ثبت",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
