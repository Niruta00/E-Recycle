import 'package:erecycle/core/themes/appcolor.dart';
import 'package:flutter/material.dart';

class TextButtonField extends StatelessWidget {
  String? hinttxt;
  IconData? icon;
  TextButtonField({super.key, this.hinttxt, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextFormField(
        cursorColor: AppColors.primaryColor,
        
        style: TextStyle(fontSize: 15, color: Color(0xff6F6565)),
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide()),
          contentPadding: EdgeInsets.only(top: 30),
          hintText: hinttxt,
        ),
      ),
    );
  }
}
