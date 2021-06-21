import 'package:flutter/material.dart';
import 'package:contact_app/pages/contact_details.dart';
import 'package:contact_app/components/contact_avatar.dart';

class ContactWidget extends StatelessWidget {

  final String name;
  final String number;
  final String imageUrl;

  ContactWidget({required this.name, required this.number, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ContactDetails(name: name, number: number, imageUrl: imageUrl,)),
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
              ContactAvatar(imageUrl: imageUrl),

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