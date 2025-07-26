import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class HouseImgTitlePrice extends StatefulWidget {
  const HouseImgTitlePrice({super.key});

  @override
  State<HouseImgTitlePrice> createState() => _HouseImgTitlePriceState();
}

class _HouseImgTitlePriceState extends State<HouseImgTitlePrice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: 250,
          child: Image.asset(
            "assets/images/house_for_rent.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 16, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "آپارتمان 112 متری دو خوابه محدوده فلکه اول و رشید"
                    .toPersianDigit(),
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(18, 20, 18, 35),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "ودیعه",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "100 میلیون تومان".toPersianDigit(),
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          "اجاره",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "5 میلیون تومان".toPersianDigit(),
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
