import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/colors.dart';
import 'package:flutter_application_2/home.screens/myHomeWidgets/my_bottom_app_bar.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class ShowOnMap extends StatefulWidget {
  const ShowOnMap({super.key});

  @override
  State<ShowOnMap> createState() => _ShowOnMapState();
}

class _ShowOnMapState extends State<ShowOnMap> {
  @override
  Widget build(BuildContext context) {
    const generalWidth = 450.0;
    final newWidth = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              FlutterMap(
                options: const MapOptions(
                  initialCenter:
                      LatLng(36.521, 46.2089), // Center the map over London
                  initialZoom: 19,
                ),
                children: [
                  TileLayer(
                    // Display map tiles from any source
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // OSMF's Tile Server
                    userAgentPackageName: 'com.example.app',
                    maxNativeZoom:
                        9, // Scale tiles when the server doesn't support higher zoom levels
                    // And many more recommended properties!
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 15, 15, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                      height: 8,
                    ),
                    SizedBox(
                      width: 90,
                      height: 35,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          padding:
                              const WidgetStatePropertyAll(EdgeInsets.zero),
                          backgroundColor:
                              const WidgetStatePropertyAll(themeColor),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.line_style,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "لیست",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                right: 25,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(2),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 0),
                            blurRadius: 4,
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 0,
                          ),
                        ],
                        border: Border.all(color: Colors.black54),
                      ),
                      child: const Icon(
                        Icons.move_up_rounded,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(2),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 0),
                            blurRadius: 4,
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 0,
                          ),
                        ],
                        border: Border.all(color: Colors.black54),
                      ),
                      child: const Icon(
                        CupertinoIcons.bookmark,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(2),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 0),
                            blurRadius: 2,
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 0,
                          ),
                        ],
                        border: Border.all(color: Colors.black54),
                      ),
                      child: const Icon(
                        Icons.my_location_sharp,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const MyBottomAppBar(),
      ),
    );
  }
}
