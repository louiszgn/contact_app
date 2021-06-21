import 'package:flutter/material.dart';
import 'package:contact_app/pages/contact_details.dart';
import 'package:contact_app/components/user_avatar.dart';

class ContactWidget extends StatelessWidget {

  final String name;
  final String number;

  ContactWidget({required this.name, required this.number});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ContactDetails(name: name, number: number)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: Colors.grey.shade300,
            ),
          ),
        ),
        child:Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            children: [
              UserAvatar(),

              SizedBox(width: 10),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                  Text(number),
                ]
              ),
            ]
          )
        ),
      ),
    );
  }
}