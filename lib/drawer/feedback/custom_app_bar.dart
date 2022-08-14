import 'package:blue_eye/drawer/feedback/rounded_button.dart';
import 'package:blue_eye/routes.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    key,
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Form(
          key: _formKey,
          child: RoundedButton(
            icon: const Icon(Icons.arrow_back),
            iconColor: Colors.blue,
            bgColor: Colors.white,
            
            tap: () => moveToHome(context),
          ),
        ),
        const SizedBox(width: 18.0),
        const Text(
          'Send Your Feedback',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        )
      ],
    );
  }
}
