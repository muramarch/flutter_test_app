import 'package:flutter/material.dart';
import 'package:test_app/screens/bottom_nav_bar.dart';
import 'package:test_app/screens/logged_out_screen.dart';
import 'package:test_app/widgets/buttons.dart';
import 'package:test_app/widgets/textFields.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        icon: Image.asset('assets/images/Union.png'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoggedOutScreen(),
            ),
          );
        },
      )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Log in',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 30,
            ),
            LoginTextField(innerText: 'Enter your email'),
            SizedBox(
              height: 20,
            ),
            PasswordTextField(innerText: 'Enter your password'),
            SizedBox(
              height: 20,
            ),
            BlackButton(
              innerText: 'LOG IN',
              buttonFunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavBar(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
