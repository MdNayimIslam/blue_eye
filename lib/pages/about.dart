import 'package:blue_eye/drawer/about/app_header.dart';
import 'package:blue_eye/drawer/about/custom_app_bar.dart';
import 'package:blue_eye/drawer/about/proportionate.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
                  const SizedBox(height: 10.0 * 2),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => {},
                        splashColor: Colors.lightBlue,
                        splashRadius: 20.0,
                        icon: const Icon(Icons.facebook,
                            color: Colors.blue),
                        iconSize: 40.0,
                        tooltip: "Facebook",
                      ),
                      IconButton(
                        onPressed: () => {},
                        splashColor: Colors.lightBlue,
                        splashRadius: 20.0,
                        icon: const Icon(Icons.email, color: Colors.blue),
                        iconSize: 40.0,
                        tooltip: "Email",
                      ),
                      IconButton(
                        onPressed: () => {},
                        splashColor: Colors.lightBlue,
                        splashRadius: 20.0,
                        icon: const Icon(Icons.phone,
                            color: Colors.blue),
                        iconSize: 40.0,
                        tooltip: "Phone",
                      ),
                      IconButton(
                        onPressed: () => {},
                        splashColor: Colors.lightBlue,
                        splashRadius: 20.0,
                        icon: const Icon(EvaIcons.twitter,
                            color: Colors.blue),
                        iconSize: 40.0,
                        tooltip: "Twitter",
                      ),
                      IconButton(
                        onPressed: () => {},
                        splashColor: Colors.lightBlue,
                        splashRadius: 20.0,
                        icon: const Icon(EvaIcons.github,
                            color: Colors.blue),
                        iconSize: 40.0,
                        tooltip: "Github",
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0 * 2),
                  const Text(
                    "About",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Mobile Recharge of all the 14 Telecom Service Providers can be done through the Digital Seva Portal. This service connects with the Telecom Service Providers to enable customers recharge their mobile real time. The payments can be made through the e-wallet available through this portal. Mobile Recharge of all the 14 Telecom Service Providers can be done through the Digital Seva Portal. This service connects with the Telecom Service Providers to enable customers recharge their mobile real time. The payments can be made through the e-wallet available through this portal.",
                    style: TextStyle(color: Colors.lightBlue, fontSize: 14),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
