import 'package:blue_eye/drawer/feedback/rounded_button.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          'Submit',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),
        ),

        const SizedBox(width: 18.0),

        RoundedButton(
          icon: const Icon(Icons.arrow_forward),
          iconColor: Colors.white,
          bgColor: Colors.blue,
          tap: () {}
        )
      ],
    );
  }
}