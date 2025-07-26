import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBottomAppBar extends StatefulWidget {
  const MyBottomAppBar({super.key});

  @override
  State<MyBottomAppBar> createState() => _MyBottomAppBarState();
}

class _MyBottomAppBarState extends State<MyBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 3,
              color: Colors.black,
              spreadRadius: 0,
            ),
          ],
        ),
        child: BottomAppBar(
          padding: const EdgeInsets.fromLTRB(45, 6, 45, 5),
          height: 60,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const InkWell(
                child: Column(
                  children: [
                    Icon(
                      CupertinoIcons.home,
                      color: Colors.orangeAccent,
                    ),
                    Text(
                      "آگهی ها",
                      style: TextStyle(color: Colors.orangeAccent, fontSize: 10),
                    )
                  ],
                ),
              ),
              const InkWell(
                child: Column(
                  children: [
                    Icon(
                      CupertinoIcons.bookmark,
                      color: Colors.blueGrey,
                    ),
                    Text(
                      "مورد علاقه",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 10),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, "logInAndRegister"),
                child: const Column(
                  children: [
                    Icon(
                      Icons.add_box_outlined,
                      color: Colors.blueGrey,
                    ),
                    Text(
                      "ثبت آگهی",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 10),
                    )
                  ],
                ),
              ),
              const InkWell(
                child: Column(
                  children: [
                    Icon(
                      Icons.space_dashboard_outlined,
                      color: Colors.blueGrey,
                    ),
                    Text(
                      "داشبورد",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 10),
                    )
                  ],
                ),
              ),
              const InkWell(
                child: Column(
                  children: [
                    Icon(
                      CupertinoIcons.list_bullet,
                      color: Colors.blueGrey,
                    ),
                    Text(
                      "منو",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 10),
                    )
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
