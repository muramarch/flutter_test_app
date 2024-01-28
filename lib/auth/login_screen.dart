import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_app/auth/logged_out_screen.dart';
import 'package:test_app/screens/bottom_nav_bar.dart';
import 'package:test_app/widgets/buttons.dart';
import 'package:test_app/widgets/textFields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BottomNavBar(),
        ),
      );
    } catch (e) {
      print('Error signing in: $e');
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
              LoginTextField(
                innerText: 'Enter your email',
                controller: _emailController,
              ),
              SizedBox(
                height: 20,
              ),
              PasswordTextField(
                innerText: 'Enter your password',
                controller: _passwordController,
              ),
              SizedBox(
                height: 20,
              ),
              BlackButton(
                innerText: 'LOG IN',
                buttonFunction: () {
                  signIn();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
