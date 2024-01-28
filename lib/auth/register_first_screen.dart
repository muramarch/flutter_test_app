import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_app/auth/login_screen.dart';
import 'package:test_app/widgets/buttons.dart';
import 'package:test_app/widgets/textFields.dart';

class RegisterFirstScreen extends StatefulWidget {
  const RegisterFirstScreen({super.key});

  @override
  State<RegisterFirstScreen> createState() => _RegisterFirstScreenState();
}

class _RegisterFirstScreenState extends State<RegisterFirstScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void disponse() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future signUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
              SizedBox(height: 20),
              BlackButton(
                innerText: 'NEXT',
                buttonFunction: () {
                  signUp();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
