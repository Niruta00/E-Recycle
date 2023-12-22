import 'package:erecycle/core/const/assetpath.dart';
import 'package:erecycle/core/routes/routes.dart';
import 'package:erecycle/core/themes/appcolor.dart';
import 'package:erecycle/utils/button/add_button.dart';
import 'package:flutter/material.dart';

class TrashDescription extends StatelessWidget {
  const TrashDescription({super.key});

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
          SizedBox(
            height: 30,
          ),
          Image(
            image: AssetImage(
              AssetsPath.trasdetail,
            ),
            width: 300,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Plastic Bottle",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                ),
                Text(
                  "1.750 Point/Kg",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 28, right: 28),
            child: Text(
              "Bottle waste is waste that is included in the category of solid inorganic waste and is difficult to decompose. This is because in general, bottle waste is made using non-biological or chemical materials. Bottle waste certainly has various other properties, including: Not easy to leak",
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(
            height: 120,
          ),
          AddButton(
            onClick: () {
              Navigator.pushNamed(context, Routes.checkdescription);
            },
            btncolor: AppColors.primaryColor,
            textcolor: AppColors.secondarycolor,
            title: "Add Trash",
          )
        ],
      ),
    );
  }
}
