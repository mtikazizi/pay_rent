import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHouses extends StatefulWidget {
  const MyHouses({super.key});

  @override
  State<MyHouses> createState() => _MyHousesState();
}

class _MyHousesState extends State<MyHouses> {
  @override
  Widget build(BuildContext context) {
    final newWidth = MediaQuery.of(context).size.width;
    final generalWidth = 450.0;
    return Expanded(
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1,
          mainAxisExtent: 150,
          crossAxisCount: newWidth > 750 ? 2 : 1, // number of items in each row
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: newWidth > 750 ? 15 : 7),
            child: InkWell(
              onTap: () => Navigator.pushNamed(context, "oneHousePage"),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 2, color: Colors.grey.withOpacity(0.4)),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 90,
                                padding: EdgeInsets.only(
                                    left: 5, bottom: 3, top: 2, right: 2),
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10))),
                                child: Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.timer,
                                      color: Colors.white,
                                      size: 17,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "دقایقی پیش",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 10, 2),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      maxLines: 2,
                                      "آپارتمان 54 متر تک خواب فول دیزاین در قلب شهر"
                                          .toPersianDigit(),
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: newWidth < 450
                                              ? 17 * newWidth / generalWidth
                                              : 17),
                                    ),
                                    SizedBox(height: newWidth > 750 ? 10 : 15),
                                    RichText(
                                      text: TextSpan(
                                        text: "5950000000"
                                            .toPersianDigit()
                                            .seRagham(),
                                        children: [
                                          TextSpan(
                                              text: " تومان",
                                              style: TextStyle(
                                                  fontSize: newWidth < 450
                                                      ? 14 *
                                                          newWidth /
                                                          generalWidth
                                                      : 14))
                                        ],
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: "Vazirmatn-medium",
                                            fontSize: newWidth < 450
                                                ? 14 * newWidth / generalWidth
                                                : 14),
                                      ),
                                    ),
                                    SizedBox(
                                      height: newWidth > 750 ? 2 : 5,
                                    ),
                                    RichText(
                                      maxLines: 2,
                                      text: TextSpan(
                                        text: "قیمت هر متر:",
                                        children: [
                                          TextSpan(
                                              text: " 28300000"
                                                  .toPersianDigit()
                                                  .seRagham()),
                                          TextSpan(
                                              text: " تومان",
                                              style: TextStyle(
                                                  fontSize: newWidth < 450
                                                      ? 14 *
                                                          newWidth /
                                                          generalWidth
                                                      : 14)),
                                        ],
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: "Vazirmatn-medium",
                                            fontSize: newWidth < 450
                                                ? 14 * newWidth / generalWidth
                                                : 14),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 15, 15, 10),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  "assets/images/house_for_rent.jpg",
                                  fit: BoxFit.fitWidth,
                                  width: 125,
                                  height: 125,
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 5, top: 5),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "8",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Icon(
                                          Icons.camera_alt_rounded,
                                          color: Colors.white,
                                          size: 16,
                                        )
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 2, left: 2),
                    padding: EdgeInsets.only(right: 4, top: 3),
                    child: Icon(
                      Icons.check_rounded,
                      color: Colors.white,
                      size: 18,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                        )),
                  ),
                ],
              ),
            ),
          );
        },
        padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
      ),
    );
  }
}
