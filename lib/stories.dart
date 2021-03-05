import 'package:flutter/material.dart';

class stories extends StatelessWidget {
  Widget users(imagePath, userName, textColor) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(imagePath),
            radius: 30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            userName,
            style: TextStyle(color: textColor),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            users('assets/images/11.jpg', 'Your story', Colors.grey[600]),
            users('assets/images/2.jpg', 'Aanya', Colors.white),
            users('assets/images/3.jpg', 'Olivia', Colors.white),
            users('assets/images/4.jpg', 'Emma', Colors.white),
            users('assets/images/5.jpg', 'Ava', Colors.white),
            users('assets/images/6.jpg', 'Liam', Colors.white),
            users('assets/images/7.jpg', 'Noah', Colors.white),
            users('assets/images/8.jpg', 'Chhaya', Colors.white),
            users('assets/images/9.jpg', 'Amelia', Colors.white),
            users('assets/images/10.jpg', 'Mia', Colors.white),
          ],
        ),
      ),
    );
  }
}
