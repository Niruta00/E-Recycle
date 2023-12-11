import 'package:erecycle/core/const/appstring.dart';
import 'package:erecycle/core/const/assetpath.dart';
import 'package:erecycle/core/routes/routes.dart';
import 'package:erecycle/core/themes/appcolor.dart';
import 'package:erecycle/utils/button/navbutton.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            children: [
              // Image(image: AssetImage(AssetsPath.discount)),
              Image(
                image: AssetImage(
                  AssetsPath.loginimg,
                ),
                fit: BoxFit.cover,
              ),
              Center(
                child: Image(
                  image: AssetImage(AssetsPath.logo),
                  height: 111,
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          AppString.email,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: NavButton(
                          btncolor: AppColors.txtfieldColor,
                          textcolor: Colors.black,
                          title: AppString.emailfield,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          AppString.password,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: NavButton(
                          btncolor: AppColors.txtfieldColor,
                          textcolor: Colors.black,
                          title: AppString.password,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          AppString.forgetpass,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: NavButton(
                          onClick: () {
                            Navigator.pushNamed(context, Routes.home);
                          },
                          btncolor: AppColors.primaryColor,
                          textcolor: Colors.white,
                          title: AppString.login,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: NavButton(
                          onClick: () {
                            Navigator.pushNamed(context, Routes.signUp);
                          },
                          isOther: true,
                          btncolor: AppColors.secondarycolor,
                          textcolor: AppColors.primaryColor,
                          title: AppString.signup,
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
