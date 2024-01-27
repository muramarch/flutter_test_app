import 'package:flutter/material.dart';
import 'package:test_app/screens/bottom_nav_bar.dart';
import 'package:test_app/screens/logged_out_screen.dart';

void main() {
  runApp(PhotoApp());
}

class PhotoApp extends StatelessWidget {
  const PhotoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoggedOutScreen(),
    );
  }
}
