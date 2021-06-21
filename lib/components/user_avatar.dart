import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          width: 3,
          color: Colors.white,
        ),
        image: DecorationImage(
          image: AssetImage("assets/images/portrait1.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}