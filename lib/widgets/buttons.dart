import 'package:flutter/material.dart';

class TransparentButton extends StatelessWidget {
  final String buttonText;
  final Function ButtonFunction;

  const TransparentButton(
      {required this.buttonText, required this.ButtonFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 167,
      height: 52,
      child: OutlinedButton(
        onPressed: () {
          ButtonFunction();
        },
        style: OutlinedButton.styleFrom(
            onSurface: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            side: BorderSide(width: 2)),
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
    );
  }
}

class BlackButton extends StatelessWidget {
  final String innerText;
  final Function buttonFunction;

  const BlackButton({required this.innerText, required this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          buttonFunction();
        },
        child: Text(
          innerText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 60),
          primary: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
      ),
    );
  }
}

class TransparentLongBtn extends StatelessWidget {
  final String buttonText;
  final Function buttonFunction;

  const TransparentLongBtn(
      {required this.buttonFunction, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {
          buttonFunction();
        },
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        style: OutlinedButton.styleFrom(
          onSurface: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          side: BorderSide(width: 2),
        ),
      ),
    );
  }
}
