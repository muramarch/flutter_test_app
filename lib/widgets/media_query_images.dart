import 'package:flutter/material.dart';

// Form for users image card
class MediaQueryImages extends StatelessWidget {
  final String image;
  final String name;
  final String login;

  const MediaQueryImages({
    required this.image,
    required this.name,
    required this.login,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: Container(
            width: MediaQuery.of(context).size.width - 2 * 16,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    login,
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
