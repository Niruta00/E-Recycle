import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final String? title;
  final Color textcolor;
  final Color btncolor;
  final VoidCallback? onClick;
  final isOther;
  const AddButton(
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
        width: 186,
        decoration: BoxDecoration(
            border:
                isOther ? Border.all(width: 1, color: Color(0xff06C167)) : null,
            borderRadius: BorderRadius.circular(25),
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
