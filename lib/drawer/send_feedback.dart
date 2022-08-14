import 'package:blue_eye/drawer/feedback/app_header.dart';
import 'package:blue_eye/drawer/feedback/custom_app_bar.dart';
import 'package:blue_eye/drawer/feedback/main_button.dart';
import 'package:blue_eye/drawer/feedback/multiline_input.dart';
import 'package:blue_eye/drawer/feedback/proportionate.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
class SendFeedbackPage extends StatefulWidget {
  const SendFeedbackPage({Key? key}) : super(key: key);

  @override
  State<SendFeedbackPage> createState() => _SendFeedbackPageState();
}

class _SendFeedbackPageState extends State<SendFeedbackPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const AppHeader(),
            Positioned(
                top: -380,
                left: -187,
                child: Opacity(
                    opacity: 0.9, child: Image.asset('assets/image/bg.png'))),
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(18.0 * 2),
              child: Column(
                children: [
                  const CustomAppBar(),
                  const SizedBox(height: 18.0 * 2),
                  
                  Image.asset(
                    'assets/image/profile.png',
                    width: getScreenPropotionWidth(166, size),
                  ),
                  const Text(
                    "Md. Nayim Islam",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "I am a flutter developer",
                    style: TextStyle(color: Colors.lightBlue, fontSize: 20),
                  ),
                  const SizedBox(height: 18.0),
                  const Divider(
                    color: Color(0XFFD9D9D9),
                  ),
                  const SizedBox(height: 18.0),
                  const Text(
                    'Mark',
                    style: TextStyle(
                      color: Color(0XFFD9D9D9),
                      fontSize: 14,
                    ),
                  ),
                  const Text(
                    'How was the service?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 18.0),
                  SmoothStarRating(
                    allowHalfRating: false,
                    onRated: (v) {},
                    starCount: 5,
                    size: 40,
                    isReadOnly: false,
                    spacing: 18.0,
                  ),
                  const SizedBox(height: 18.0),
                  const MultilineInput(),
                  const SizedBox(height: 18.0),
                  const MainButton()
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
