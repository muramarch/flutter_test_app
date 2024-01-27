import 'package:flutter/material.dart';
import 'package:test_app/screens/login_screen.dart';
import 'package:test_app/widgets/buttons.dart';
import 'package:test_app/widgets/textFields.dart';

class RegisterSecondScreen extends StatefulWidget {
  const RegisterSecondScreen({super.key});

  @override
  State<RegisterSecondScreen> createState() => _RegisterSecondScreenState();
}

class _RegisterSecondScreenState extends State<RegisterSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        icon: Image.asset('assets/images/Union.png'),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Register',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 30,
            ),
            LoginTextField(innerText: 'Enter your name'),
            SizedBox(
              height: 20,
            ),
            BlackButton(
              innerText: 'SIGN UP',
              buttonFunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'By signing up, you agree to Photo\'s Term of service and Privacy Policy',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
