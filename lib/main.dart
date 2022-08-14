import 'package:blue_eye/drawer/notifications.dart';
import 'package:blue_eye/drawer/privacy_policy.dart';
import 'package:blue_eye/drawer/send_feedback.dart';
import 'package:blue_eye/pages/about.dart';
import 'package:blue_eye/pages/chatbot.dart';
import 'package:blue_eye/pages/emotion_detection_by_image.dart';
import 'package:blue_eye/pages/emotion_detection_by_pose.dart';
import 'package:blue_eye/pages/emotion_detection_by_voice.dart';
import 'package:blue_eye/pages/homepage.dart';
import 'package:blue_eye/pages/object_detection.dart';
import 'package:blue_eye/routes.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<CameraDescription>? cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const BlueEye());
}

class BlueEye extends StatelessWidget {
  const BlueEye({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.notificationsRoute: (context) => const NotificationsPage(),
        MyRoutes.privacyPolicyRoute: (context) => PrivacyPolicyPage(),
        MyRoutes.sendFeedbackRoute: (context) => const SendFeedbackPage(),
        MyRoutes.objectDetectionRoute: (context) => const ObjectDetectionPage(),
        MyRoutes.emotionDetectionByObjectRoute: (context) =>
            const EmotionDetectionByObjectPage(),
        MyRoutes.emotionDetectionByPoseRoute: (context) =>
            const EmotionDetectionByPosePage(),
        MyRoutes.emotionDetectionByVoiceRoute: (context) =>
            const EmotionDetectionByVoicePage(),
        MyRoutes.chatbotRoute: (context) => const ChatbotPage(),
        MyRoutes.aboutRoute: (context) => const AboutPage(),
      },
    );
  }
}
