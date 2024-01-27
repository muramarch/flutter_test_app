import 'package:flutter/material.dart';
import 'package:test_app/screens/login_screen.dart';
import 'package:test_app/screens/register_first_screen.dart';
import 'package:test_app/widgets/buttons.dart';

class LoggedOutScreen extends StatelessWidget {
  const LoggedOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.85,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/Rectangle.jpg'),
              fit: BoxFit.cover,
            )),
            child: Center(
              child: Image.asset('assets/images/Group.png'),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TransparentButton(
                      buttonText: 'LOG IN',
                      ButtonFunction: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  TransparentButton(
                    buttonText: 'REGISTER',
                    ButtonFunction: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterFirstScreen(),
                        ),
                      );
                      print('000');
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
