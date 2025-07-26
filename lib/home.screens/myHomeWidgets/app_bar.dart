import 'package:flutter/material.dart';
import 'package:flutter_application_2/colors.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final generalWidth = 450.0;
    final newWidth = MediaQuery.of(context).size.width;
    Size myShow() {
      if (newWidth > 490) {
        return newWidth > 555 ? Size(0, 130) : Size(0, 115);
      } else {
        return Size(0, 115);
      }
    }

    return PreferredSize(
      preferredSize: myShow(),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 490) {
            return SafeArea(
              child: Container(
                height: newWidth > 555 ? 130 : 115,
                padding: const EdgeInsets.fromLTRB(25, 10, 25, 5),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(246, 246, 246, 1),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 2),
                      blurRadius: 2,
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/pay_rent_logo.png",
                          width: 100 * newWidth / generalWidth,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 45,
                            child: TextFormField(
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: themeColor,
                                ),
                                filled: true,
                                enabled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: scaffoldColor,
                                  ),
                                ),
                                fillColor: Colors.white,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 0),
                                hintText: "جستجوی ملک...",
                                hintStyle: const TextStyle(color: themeColor),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: scaffoldColor,
                                  ),
                                ),
                              ),
                              style: const TextStyle(color: themeColor),
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
                              selected = 0;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: themeColor),
                            padding: const EdgeInsets.symmetric(vertical: 7),
                            width: 87 * newWidth / generalWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                selected == 0
                                    ? Container(
                                        margin: const EdgeInsets.only(left: 5),
                                        width: 7,
                                        height: 7,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                      )
                                    : Container(),
                                Text(
                                  "اجاره",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: newWidth > 555
                                          ? 18.33
                                          : 15 * newWidth / generalWidth),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selected = 1;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: themeColor),
                            padding: const EdgeInsets.symmetric(vertical: 7),
                            width: 87 * newWidth / generalWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                selected == 1
                                    ? Container(
                                        margin: const EdgeInsets.only(left: 5),
                                        width: 7,
                                        height: 7,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                      )
                                    : Container(),
                                Text(
                                  "فیلتر",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: newWidth > 555
                                          ? 18.33
                                          : 15 * newWidth / generalWidth),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selected = 2;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: themeColor),
                            padding: const EdgeInsets.symmetric(vertical: 7),
                            width: 87 * newWidth / generalWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                selected == 2
                                    ? Container(
                                        margin: const EdgeInsets.only(left: 5),
                                        width: 7,
                                        height: 7,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                      )
                                    : Container(),
                                Text(
                                  "مرتب سازی",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: newWidth > 555
                                          ? 18.33
                                          : 15 * newWidth / generalWidth),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: themeColor),
                          padding: const EdgeInsets.symmetric(vertical: 7),
                          width: 87 * newWidth / generalWidth,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.location_on_outlined,
                                color: scaffoldColor,
                                size: 23,
                              ),
                              Text(
                                "نقشه",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: newWidth > 555
                                        ? 18.33
                                        : 15 * newWidth / generalWidth),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          } else {
            return SafeArea(
              child: Container(
                padding: const EdgeInsets.fromLTRB(25, 10, 25, 5),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(246, 246, 246, 1),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 2),
                      blurRadius: 2,
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/pay_rent_logo.png",
                          width: 100 * newWidth / generalWidth,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 40,
                            child: TextFormField(
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: themeColor,
                                ),
                                filled: true,
                                enabled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: scaffoldColor,
                                  ),
                                ),
                                fillColor: Colors.white,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 0),
                                hintText: "جستجوی ملک...",
                                hintStyle: const TextStyle(color: themeColor),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: scaffoldColor,
                                  ),
                                ),
                              ),
                              style: const TextStyle(color: themeColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              selected = 0;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: themeColor),
                            padding: const EdgeInsets.symmetric(vertical: 7),
                            width: 87 * newWidth / generalWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                selected == 0
                                    ? Container(
                                        margin: const EdgeInsets.only(left: 5),
                                        width: 7,
                                        height: 7,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                      )
                                    : Container(),
                                Text(
                                  "اجاره",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15 * newWidth / generalWidth),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selected = 1;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: themeColor),
                            padding: const EdgeInsets.symmetric(vertical: 7),
                            width: 87 * newWidth / generalWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                selected == 1
                                    ? Container(
                                        margin: const EdgeInsets.only(left: 5),
                                        width: 7,
                                        height: 7,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                      )
                                    : Container(),
                                Text(
                                  "فیلتر",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15 * newWidth / generalWidth),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selected = 2;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: themeColor),
                            padding: const EdgeInsets.symmetric(vertical: 7),
                            width: 87 * newWidth / generalWidth,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                selected == 2
                                    ? Container(
                                        margin: const EdgeInsets.only(left: 5),
                                        width: 7,
                                        height: 7,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                      )
                                    : Container(),
                                Text(
                                  "مرتب سازی",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15 * newWidth / generalWidth),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: themeColor),
                          padding: const EdgeInsets.symmetric(vertical: 7),
                          width: 87 * newWidth / generalWidth,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: scaffoldColor,
                                size: 20 * newWidth / generalWidth,
                              ),
                              Text(
                                "نقشه",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15 * newWidth / generalWidth),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
