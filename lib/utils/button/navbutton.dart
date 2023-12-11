import 'package:erecycle/core/themes/appcolor.dart';
import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final String? title;
  final Color textcolor;
  final Color btncolor;
  final VoidCallback? onClick;
  final isOther;
  const NavButton(
      {super.key,
      required this.btncolor,
      this.title,
      required this.textcolor,
      this.isOther = false, 
      this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        height: 38,
        width: 303,
        decoration: BoxDecoration(
            border: isOther
                ? Border.all(width: 1, color: AppColors.primaryColor)
                : null,
            borderRadius: BorderRadius.circular(10),
            color: btncolor),
        child: Center(
          child: Text(
            title!,
            style: TextStyle(
              color: textcolor,
            ),
          ),
        ),
        
      ),
    );
  }
}
