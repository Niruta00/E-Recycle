import 'package:erecycle/core/const/assetpath.dart';
import 'package:erecycle/core/routes/routes.dart';
import 'package:erecycle/core/themes/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 330,
              width: 390,
              color: Colors.white,
              child: Stack(children: [
                Container(height: 290, color: Color(0xffC9E4B9)),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(AssetsPath.locationSvg),
                                // Image.asset(AssetsPath.location),
                                Column(
                                  children: [
                                    Text(
                                      "Delivered to",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 17),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Semarang",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 17),
                                        ),
                                        Icon(Icons.keyboard_arrow_down_outlined)
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Hi,Jennifer!",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17),
                                ),
                                SvgPicture.asset(AssetsPath.notificationSvg),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 28, left: 28),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Total Points",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 4, right: 12, top: 4),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "1.050 points",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: Color(0xff135722)),
                                  ),
                                  SvgPicture.asset(AssetsPath.discountSvg)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17, right: 12),
                        child: TextFormField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.all(15.0),
                            hintText: 'Search Menu...',
                            suffixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  15.0), // Circular border with radius 30
                              borderSide:
                                  BorderSide.none, // Remove the border side
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: MediaQuery.sizeOf(context).height * 0.31,
                  // bottom: 5,
                  left: MediaQuery.sizeOf(context).width * 0.15,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.sorttrash);
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.061,
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff101828)
                                  .withOpacity(0.1), // Shadow color
                              spreadRadius: 0, // How much to spread the shadow
                              blurRadius: 8, // How much to blur the shadow
                              offset: const Offset(
                                  0, 4), // Changes the position of the shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff86D37F)),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Sort Trash",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: SizedBox(
                height: 65,
                width: 345,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.secondarycolor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(AssetsPath.bin),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.6,
                        child: Column(
                          children: [
                            Text(
                              "450 poin Trash+ to find a treasure",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: LinearProgressIndicator(
                                backgroundColor: Colors.grey,
                                color: Color(0xff008821),
                                minHeight: 7,
                                value: 0.6,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Available Promo",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: AppColors.primaryColor),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage(AssetsPath.motor)),
                Image(image: AssetImage(AssetsPath.truck)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
