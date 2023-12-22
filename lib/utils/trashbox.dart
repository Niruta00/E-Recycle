import 'package:flutter/material.dart';

class TrashContainer extends StatelessWidget {
  final double height;
  final String imagePath;
  final String title;
  final String description;
  final VoidCallback? onTap; // Callback function for onTap

  const TrashContainer({
    Key? key,
    required this.height,
    required this.imagePath,
    required this.title,
    required this.description,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 149,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Image(
              image: AssetImage(imagePath),
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
            ),
            Text(
              description,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
