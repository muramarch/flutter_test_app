import 'package:flutter/material.dart';
import 'package:test_app/screens/register_second_screen.dart';
import 'package:test_app/widgets/buttons.dart';
import 'package:test_app/widgets/textFields.dart';

class RegisterFirstScreen extends StatefulWidget {
  const RegisterFirstScreen({super.key});

  @override
  State<RegisterFirstScreen> createState() => _RegisterFirstScreenState();
}

class _RegisterFirstScreenState extends State<RegisterFirstScreen> {
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
            LoginTextField(innerText: 'Enter your email'),
            SizedBox(
              height: 20,
            ),
            PasswordTextField(innerText: 'Enter your password'),
            SizedBox(
              height: 20,
            ),
            BlackButton(
              innerText: 'NEXT',
              buttonFunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterSecondScreen(),
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
