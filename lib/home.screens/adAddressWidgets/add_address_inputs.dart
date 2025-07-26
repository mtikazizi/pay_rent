import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/colors.dart';
import 'package:flutter_application_2/home.screens/advertisementImagesWidgets/add_advertisement_images.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class AddAddressInputs extends StatefulWidget {
  const AddAddressInputs({super.key});

  @override
  State<AddAddressInputs> createState() => _AddAddressInputsState();
}

class _AddAddressInputsState extends State<AddAddressInputs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(55, 50, 55, 40),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent.shade100.withOpacity(0.3),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                const Icon(
                  CupertinoIcons.exclamationmark_circle,
                  color: themeColor,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  "در کمتر از 3 دقیقه آگهی خود را در پی رنت ثبت کنید."
                      .toPersianDigit(),
                  style: const TextStyle(
                    color: themeColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 150,),
          TextFormField(
            cursorHeight: 20,
            textAlign: TextAlign.center,
            cursorColor: Colors.black54,
            style: const TextStyle(color: Colors.grey, ),
            decoration: InputDecoration(
              labelText: "استان",
              labelStyle: const TextStyle(
                color: Colors.black54,
                fontSize: 19,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              hintText: "استان را انتخاب کنید",
              hintStyle: const TextStyle(
                color: Colors.black26,
                fontSize: 15,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.black54),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.black54),
              ),
            ),
          ),
          const SizedBox(height: 15,),
          TextFormField(
            cursorHeight: 20,
            textAlign: TextAlign.center,
            cursorColor: Colors.black54,
            style: const TextStyle(color: Colors.grey, ),
            decoration: InputDecoration(
              labelText: "شهر",
              labelStyle: const TextStyle(
                color: Colors.black54,
                fontSize: 19,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              hintText: "شهر را انتخاب کنید",
              hintStyle: const TextStyle(
                color: Colors.black26,
                fontSize: 15,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.black54),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.black54),
              ),
            ),
          ),
          const SizedBox(height: 15,),
          TextFormField(
            cursorHeight: 20,
            textAlign: TextAlign.center,
            cursorColor: Colors.black54,
            style: const TextStyle(color: Colors.grey, ),
            decoration: InputDecoration(
              labelText: "نام خیابان اصلی",
              labelStyle: const TextStyle(
                color: Colors.black54,
                fontSize: 19,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              hintText: "نام خیابان اصلی را بنویسید",
              hintStyle: const TextStyle(
                color: Colors.black26,
                fontSize: 15,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.black54),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.black54),
              ),
            ),
          ),
          const SizedBox(height: 160,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, "selectAddressOnMap"),
              style: ButtonStyle(
                padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 7, horizontal: 60),),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),),
                backgroundColor: const WidgetStatePropertyAll(Color.fromRGBO(53, 101, 178, 1)),
              ),
              child: const Text(
                "مرحله بعد",
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
