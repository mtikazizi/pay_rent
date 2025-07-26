import 'package:flutter/material.dart';

import '../../colors.dart';

class ChooseYourAdType extends StatefulWidget {
  const ChooseYourAdType({super.key});

  @override
  State<ChooseYourAdType> createState() => _ChooseYourAdTypeState();
}

class _ChooseYourAdTypeState extends State<ChooseYourAdType> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 80, 25, 40),
      child: Column(
        children: [
          const Icon(
            Icons.add_box_outlined,
            size: 140,
            color: Color.fromRGBO(169, 185, 204, 1.0),
          ),
          const Text(
            "ثبت آگهی",
            style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(169, 185, 204, 1.0),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "نوع آگهی خود را انتخاب کنید.",
                style: TextStyle(
                  color: themeColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, "adAddress"),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.black26,
                      ),
                      bottom: BorderSide(
                        color: Colors.black26,
                      ),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("اجاره آپارتمان مسکونی", style: TextStyle(fontSize: 16),),
                      Icon(Icons.arrow_forward_ios_rounded, size: 18,),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black26,
                    ),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("اجاره خانه و ویلای مسکونی", style: TextStyle(fontSize: 16),),
                    Icon(Icons.arrow_forward_ios_rounded, size: 18,),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
