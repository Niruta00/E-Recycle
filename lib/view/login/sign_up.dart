import 'package:erecycle/core/const/assetpath.dart';
import 'package:erecycle/core/routes/routes.dart';
import 'package:erecycle/core/themes/appcolor.dart';
import 'package:erecycle/utils/button/navbutton.dart';
import 'package:erecycle/utils/button/textfield.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
          backgroundColor: AppColors.primaryColor,
          title: Text("SignUp"),
        ),
        body: Column(
          children: [
            TextButtonField(
              hinttxt: "E-mail Address",
              icon: Icons.email_sharp,
            ),
            TextButtonField(
              hinttxt: "Name",
              icon: Icons.person_3_outlined,
            ),
            TextButtonField(
              hinttxt: "Phone Number",
              icon: Icons.phone,
            ),
            TextButtonField(
              hinttxt: "Password",
              icon: Icons.lock_outline,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 8),
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  Text(
                    "Aktifkan Trash+ sekarang",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: NavButton(
                btncolor: AppColors.primaryColor,
                textcolor: AppColors.secondarycolor,
                onClick: () {
                  Navigator.pushNamed(context, Routes.login);
                },
                title: "Continue",
              ),
            ),
            Text("Or Sign up With"),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage(AssetsPath.fblogo)),
                  Image(image: AssetImage(AssetsPath.glogo)),
                  Image(image: AssetImage(AssetsPath.applelogo))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
