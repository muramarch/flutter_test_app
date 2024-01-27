import 'package:flutter/material.dart';
import 'package:test_app/models/user_models.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 70),
          Center(
            child: Container(
              height: 128,
              width: 128,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
              child: Image.asset(jane.avatarUrl),
            ),
          ),
          SizedBox(height: 30),
          Text(
            jane.name,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 10),
          Text(
            jane.location,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w800),
          )
        ],
      ),
    );
  }
}
