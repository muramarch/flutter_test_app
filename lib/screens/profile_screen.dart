import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_app/auth/logged_out_screen.dart';
import 'package:test_app/models/user_models.dart';
import 'package:test_app/widgets/buttons.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 70),
                Text(
                  'Welcome!',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 10),
                Text(
                  user.email!,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 20),
                TransparentLongBtn(
                    buttonFunction: () {
                      FirebaseAuth.instance.signOut();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoggedOutScreen(),
                        ),
                      );
                    },
                    buttonText: 'Logout'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
