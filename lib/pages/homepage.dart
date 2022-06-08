import 'package:blue_eye/header/my_drawer_header.dart';
import 'package:blue_eye/utils/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToDashboard(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.dashboardRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  moveToContacts(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.contactsRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  moveToEvents(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.eventsRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  moveToNotes(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.notesRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  moveToSetting(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.settingRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  moveToNotifications(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.notificationsRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  moveToPrivacyPolicy(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.privacyPolicyRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  moveToSendFeedback(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.sendFeedbackRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  moveToObjectDetection(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.objectDetectionRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  moveToEmotionDetectionByImage(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(
          context, MyRoutes.emotionDetectionByObjectRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  moveToEmotionDetectionByPose(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.emotionDetectionByPoseRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  moveToEmotionDetectionByVoice(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.emotionDetectionByVoiceRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  moveToChatbot(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.chatbotRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  moveToAbout(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.aboutRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "BLUE  EYE",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyDrawerHeader(),
                myDrawerList(),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xFFF4EFF6),
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.height / 2.5,
                    margin: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 10.0, bottom: 50.0),
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              spreadRadius: 3.0,
                              blurRadius: 6.0,
                              offset: Offset(6, 2)),
                          BoxShadow(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              spreadRadius: 3.0,
                              blurRadius: 6.0,
                              offset: Offset(-6, -2))
                        ],
                        border: Border.all(color: Colors.blue, width: 10.0),
                        borderRadius: BorderRadius.circular(300.0),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/logo.png"),
                        )),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 100,
                        margin: const EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: const Color(0xFFF4Eff6),
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.1),
                                  spreadRadius: 3.0,
                                  blurRadius: 6.0,
                                  offset: Offset(6, 2)),
                              BoxShadow(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  spreadRadius: 3.0,
                                  blurRadius: 6.0,
                                  offset: Offset(-6, -2))
                            ]),
                        child: IconButton(
                          onPressed: () => moveToObjectDetection(context),
                          splashColor: Colors.grey,
                          icon: const Icon(Icons.center_focus_weak,
                              color: Colors.blue),
                          iconSize: 60.0,
                          tooltip: "Object Detection",
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        margin: const EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: const Color(0xFFF4Eff6),
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.1),
                                  spreadRadius: 3.0,
                                  blurRadius: 6.0,
                                  offset: Offset(6, 2)),
                              BoxShadow(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  spreadRadius: 3.0,
                                  blurRadius: 6.0,
                                  offset: Offset(-6, -2))
                            ]),
                        child: IconButton(
                          onPressed: () =>
                              moveToEmotionDetectionByImage(context),
                          splashColor: Colors.grey,
                          icon: const Icon(Icons.sentiment_very_satisfied,
                              color: Colors.blue),
                          iconSize: 60.0,
                          tooltip: "Emotion Detection by Object",
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        margin: const EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: const Color(0xFFF4Eff6),
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.1),
                                  spreadRadius: 3.0,
                                  blurRadius: 6.0,
                                  offset: Offset(6, 2)),
                              BoxShadow(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  spreadRadius: 3.0,
                                  blurRadius: 6.0,
                                  offset: Offset(-6, -2))
                            ]),
                        child: IconButton(
                          onPressed: () =>
                              moveToEmotionDetectionByPose(context),
                          splashColor: Colors.grey,
                          icon: const Icon(Icons.accessibility,
                              color: Colors.blue),
                          iconSize: 60.0,
                          tooltip: "Emotion Detection by Pose",
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 100,
                        margin: const EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: const Color(0xFFF4Eff6),
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.1),
                                  spreadRadius: 3.0,
                                  blurRadius: 6.0,
                                  offset: Offset(6, 2)),
                              BoxShadow(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  spreadRadius: 3.0,
                                  blurRadius: 6.0,
                                  offset: Offset(-6, -2))
                            ]),
                        child: IconButton(
                          onPressed: () =>
                              moveToEmotionDetectionByVoice(context),
                          splashColor: Colors.grey,
                          icon: const Icon(Icons.mic, color: Colors.blue),
                          iconSize: 60.0,
                          tooltip: "Emotion Detection by Voice",
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        margin: const EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: const Color(0xFFF4Eff6),
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.1),
                                  spreadRadius: 3.0,
                                  blurRadius: 6.0,
                                  offset: Offset(6, 2)),
                              BoxShadow(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  spreadRadius: 3.0,
                                  blurRadius: 6.0,
                                  offset: Offset(-6, -2))
                            ]),
                        child: IconButton(
                          onPressed: () => moveToChatbot(context),
                          splashColor: Colors.grey,
                          icon: const Icon(Icons.textsms, color: Colors.blue),
                          iconSize: 60.0,
                          tooltip: "Chatbot",
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        margin: const EdgeInsets.all(18.0),
                        decoration: BoxDecoration(
                            color: const Color(0xFFF4Eff6),
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.1),
                                  spreadRadius: 3.0,
                                  blurRadius: 6.0,
                                  offset: Offset(6, 2)),
                              BoxShadow(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  spreadRadius: 3.0,
                                  blurRadius: 6.0,
                                  offset: Offset(-6, -2))
                            ]),
                        child: IconButton(
                          onPressed: () => moveToAbout(context),
                          splashColor: Colors.grey,
                          icon: const Icon(Icons.info_outline,
                              color: Colors.blue),
                          iconSize: 60.0,
                          tooltip: "About Section",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Widget myDrawerList() {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              InkWell(
                onTap: () => moveToDashboard(context),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Icon(Icons.dashboard_outlined,
                            size: 20, color: Colors.blue),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          "Dashboard",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => moveToContacts(context),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Icon(Icons.people_alt_outlined,
                            size: 20, color: Colors.blue),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          "Contacts",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => moveToEvents(context),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Icon(Icons.event, size: 20, color: Colors.blue),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          "Events",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => moveToNotes(context),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Icon(Icons.notes, size: 20, color: Colors.blue),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          "Notes",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () => moveToSetting(context),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Icon(Icons.settings_outlined,
                            size: 20, color: Colors.blue),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          "Setting",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => moveToNotifications(context),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Icon(Icons.notifications_outlined,
                            size: 20, color: Colors.blue),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          "Notifications",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () => moveToPrivacyPolicy(context),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Icon(Icons.privacy_tip_outlined,
                            size: 20, color: Colors.blue),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          "Privacy policy",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => moveToSendFeedback(context),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Icon(Icons.feed_outlined,
                            size: 20, color: Colors.blue),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          "Send feedback",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
