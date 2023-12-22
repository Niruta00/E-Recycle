import 'package:erecycle/core/const/assetpath.dart';
import 'package:erecycle/core/routes/routes.dart';
import 'package:erecycle/core/themes/appcolor.dart';
import 'package:erecycle/utils/button/add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CheckDescription extends StatelessWidget {
  const CheckDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage(AssetsPath.topbar)),
          Container(
            height: 91,
            width: 397,
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
                color: Color(0xff388E1A).withOpacity(0.3)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Add Your Trash",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    "Today",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color:
                      const Color(0xff101828).withOpacity(0.1), // Shadow color
                  spreadRadius: 0, // How much to spread the shadow
                  blurRadius: 8, // How much to blur the shadow
                  offset:
                      const Offset(0, 4), // Changes the position of the shadow
                ),
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
              height: 150,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Image(
                    image: AssetImage(AssetsPath.logam),
                    height: 96,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Plastic Bottle",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      Text("(10.0 kg)"),
                      Text(
                        "17.500 Point",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 190,
            width: 344,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LinearProgressIndicator(
                    backgroundColor: const Color.fromARGB(255, 226, 223, 223),
                    color: Color.fromARGB(255, 226, 223, 223),
                    minHeight: 10,
                    value: 0.8,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 260,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      "USE YOUR PROMO HERE !!!",
                      style:
                          TextStyle(color: Color(0xff000000).withOpacity(0.44)),
                    )),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Choose Pick-up",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Motor(7.000)",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xff000000).withOpacity(0.44)),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
                LinearProgressIndicator(
                  backgroundColor: const Color.fromARGB(255, 226, 223, 223),
                  color: Color.fromARGB(255, 226, 223, 223),
                  minHeight: 10,
                  value: 0.8,
                  borderRadius: BorderRadius.circular(10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SvgPicture.asset(
                    //   AssetsPath.dollarSvg,
                    //   height: 10,
                    // ),
                    Text(
                      "Pay with Cash",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total yang didapat :",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000).withOpacity(0.44)),
                    ),
                    Text(
                      "Rp 17.500 ",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Column(
                  children: [
                    AddButton(
                      title: "Request PickUp",
                      btncolor: AppColors.primaryColor,
                      textcolor: Colors.white,
                      onClick: () {
                        Navigator.pushNamed(context, Routes.choosePickup);
                      },
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
