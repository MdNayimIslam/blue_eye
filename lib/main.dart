import 'package:blue_eye/drawer/contacts.dart';
import 'package:blue_eye/drawer/dashboard.dart';
import 'package:blue_eye/drawer/events.dart';
import 'package:blue_eye/drawer/notes.dart';
import 'package:blue_eye/drawer/notifications.dart';
import 'package:blue_eye/drawer/privacy_policy.dart';
import 'package:blue_eye/drawer/send_feedback.dart';
import 'package:blue_eye/drawer/settings.dart';
import 'package:blue_eye/pages/about.dart';
import 'package:blue_eye/pages/chatbot.dart';
import 'package:blue_eye/pages/emotion_detection_by_image.dart';
import 'package:blue_eye/pages/emotion_detection_by_pose.dart';
import 'package:blue_eye/pages/emotion_detection_by_voice.dart';
import 'package:blue_eye/pages/homepage.dart';
import 'package:blue_eye/pages/object_detection.dart';
import 'package:blue_eye/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(BlueEye());
}
class BlueEye extends StatelessWidget {
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
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.dashboardRoute: (context) => DashboardPage(),
        MyRoutes.contactsRoute: (context) => ContactsPage(),
        MyRoutes.eventsRoute: (context) => EventsPage(),
        MyRoutes.notesRoute: (context) => NotesPage(),
        MyRoutes.settingRoute: (context) => SettingsPage(),
        MyRoutes.notificationsRoute: (context) => NotificationsPage(),
        MyRoutes.privacyPolicyRoute: (context) => PrivacyPolicyPage(),
        MyRoutes.sendFeedbackRoute: (context) => SendFeedbackPage(),
        MyRoutes.objectDetectionRoute: (context) => ObjectDetectionPage(),
        MyRoutes.emotionDetectionByObjectRoute: (context) =>
            EmotionDetectionByObjectPage(),
        MyRoutes.emotionDetectionByPoseRoute: (context) =>
            EmotionDetectionByPosePage(),
        MyRoutes.emotionDetectionByVoiceRoute: (context) =>
            EmotionDetectionByVoicePage(),
        MyRoutes.chatbotRoute: (context) => ChatbotPage(),
        MyRoutes.aboutRoute: (context) => AboutPage(),
      },
    );
  }
}
