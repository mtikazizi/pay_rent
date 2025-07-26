import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/colors.dart';
import 'package:flutter_application_2/home.screens/myHomeWidgets/my_houses.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

// ignore: non_constant_identifier_names
int selected_page = 0;

class _MyHomeState extends State<MyHome> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    const generalWidth = 450.0;
    final newWidth = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 490) {
            return Scaffold(
              appBar: PreferredSize(
                preferredSize: Size(0, newWidth > 555 ? 130 : 115),
                child: SafeArea(
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
                              "assets/images/logo/pay_rent_logo.png",
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
                                    hintStyle:
                                        const TextStyle(color: themeColor),
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
                        SizedBox(
                          height: newWidth > 555 ? 4 : 8,
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 7),
                                width: 87 * newWidth / generalWidth,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    selected == 0
                                        ? Container(
                                            margin:
                                                const EdgeInsets.only(left: 5),
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 7),
                                width: 87 * newWidth / generalWidth,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    selected == 1
                                        ? Container(
                                            margin:
                                                const EdgeInsets.only(left: 5),
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 7),
                                width: 87 * newWidth / generalWidth,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    selected == 2
                                        ? Container(
                                            margin:
                                                const EdgeInsets.only(left: 5),
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
                ),
              ),
              body: const MyHouses(),
              bottomNavigationBar: myBottomAppBar(),
            );
          } else {
            return Scaffold(
              appBar: PreferredSize(
                preferredSize: const Size(0, 105),
                child: SafeArea(
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
                              "assets/images/logo/pay_rent_logo.png",
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
                                    hintStyle:
                                        const TextStyle(color: themeColor),
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 7),
                                width: 87 * newWidth / generalWidth,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    selected == 0
                                        ? Container(
                                            margin:
                                                const EdgeInsets.only(left: 5),
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
                                          fontSize:
                                              15 * newWidth / generalWidth),
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 7),
                                width: 87 * newWidth / generalWidth,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    selected == 1
                                        ? Container(
                                            margin:
                                                const EdgeInsets.only(left: 5),
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
                                          fontSize:
                                              15 * newWidth / generalWidth),
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 7),
                                width: 87 * newWidth / generalWidth,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    selected == 2
                                        ? Container(
                                            margin:
                                                const EdgeInsets.only(left: 5),
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
                                          fontSize:
                                              15 * newWidth / generalWidth),
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
                ),
              ),
              body: const MyHouses(),
              bottomNavigationBar: myBottomAppBar(),
            );
          }
        },
      ),
    );
  }

  Widget myBottomAppBar() {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 5,
            color: Colors.black,
            spreadRadius: 0,
          ),
        ],
      ),
      child: BottomAppBar(
        padding: MediaQuery.of(context).size.width < 400
            ? const EdgeInsets.fromLTRB(20, 6, 20, 5)
            : const EdgeInsets.fromLTRB(35, 6, 35, 5),
        height: MediaQuery.of(context).size.width > 640 ? 75 : 60,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  selected_page = 0;
                });
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.16,
                child: Column(
                  children: [
                    Icon(
                      CupertinoIcons.home,
                      color: selected_page == 0
                          ? Colors.orangeAccent
                          : Colors.blueGrey,
                    ),
                    Text(
                      "آگهی ها",
                      style: TextStyle(
                          color: selected_page == 0
                              ? Colors.orangeAccent
                              : Colors.blueGrey,
                          fontSize: MediaQuery.of(context).size.width * 0.024),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selected_page = 1;
                });
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.16,
                child: Column(
                  children: [
                    Icon(
                      CupertinoIcons.bookmark,
                      color: selected_page == 1
                          ? Colors.orangeAccent
                          : Colors.blueGrey,
                    ),
                    Text(
                      "مورد علاقه",
                      style: TextStyle(
                          color: selected_page == 1
                              ? Colors.orangeAccent
                              : Colors.blueGrey,
                          fontSize: MediaQuery.of(context).size.width * 0.024),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "logInAndRegister");
                setState(() {
                  selected_page = 2;
                });
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.16,
                child: Column(
                  children: [
                    Icon(
                      Icons.add_box_outlined,
                      color: selected_page == 2
                          ? Colors.orangeAccent
                          : Colors.blueGrey,
                    ),
                    Text(
                      "ثبت آگهی",
                      style: TextStyle(
                          color: selected_page == 2
                              ? Colors.orangeAccent
                              : Colors.blueGrey,
                          fontSize: MediaQuery.of(context).size.width * 0.024),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selected_page = 3;
                });
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.16,
                child: Column(
                  children: [
                    Icon(
                      Icons.space_dashboard_outlined,
                      color: selected_page == 3
                          ? Colors.orangeAccent
                          : Colors.blueGrey,
                    ),
                    Text(
                      "داشبورد",
                      style: TextStyle(
                          color: selected_page == 3
                              ? Colors.orangeAccent
                              : Colors.blueGrey,
                          fontSize: MediaQuery.of(context).size.width * 0.024),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selected_page = 4;
                });
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.16,
                child: Column(
                  children: [
                    Icon(
                      CupertinoIcons.list_bullet,
                      color: selected_page == 4
                          ? Colors.orangeAccent
                          : Colors.blueGrey,
                    ),
                    Text(
                      "منو",
                      style: TextStyle(
                          color: selected_page == 4
                              ? Colors.orangeAccent
                              : Colors.blueGrey,
                          fontSize: MediaQuery.of(context).size.width * 0.024),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
