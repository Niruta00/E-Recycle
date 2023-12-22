import 'package:erecycle/core/const/assetpath.dart';
import 'package:erecycle/core/routes/routes.dart';
import 'package:erecycle/utils/trashbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SortTrash extends StatelessWidget {
  const SortTrash({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 250,
              width: 390,
              color: Colors.white,
              child: Stack(children: [
                Container(height: 210, color: Color(0xffC9E4B9)),
                Container(
                  height: 100,
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Hi,Jennifier!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 19),
                            ),
                            Icon(
                              Icons.notifications,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: 110,
                    left: 10,
                    child: Text(
                      "Add your Trash",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                Positioned(
                    top: 140,
                    left: 10,
                    child: Text(
                      "Today",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                Positioned(
                  top: MediaQuery.sizeOf(context).height * 0.22,
                  // bottom: 5,
                  left: MediaQuery.sizeOf(context).width * 0.10,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.sorttrash);
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.061,
                      width: MediaQuery.sizeOf(context).width * 0.8,
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
                          color: Colors.white),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Sort Trash",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    TrashContainer(
                      height: 272,
                      imagePath: AssetsPath.plasticbottle,
                      title: "Plastic Bottle",
                      description: "1.750 Point/Kg",
                      onTap: () {
                        Navigator.pushNamed(context, Routes.trasdescription);
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TrashContainer(
                        height: 180,
                        imagePath: AssetsPath.paper,
                        title: "Paper",
                        description: "600 Point/Kg")
                  ],
                ),
                Column(
                  children: [
                    TrashContainer(
                        height: 180,
                        imagePath: AssetsPath.logam,
                        title: "Logam",
                        description: "2.000 Point/Kg"),
                    SizedBox(
                      height: 30,
                    ),
                    TrashContainer(
                        height: 272,
                        imagePath: AssetsPath.skincare,
                        title: "SkinCare",
                        description: "4.000 Point/Kg")
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
