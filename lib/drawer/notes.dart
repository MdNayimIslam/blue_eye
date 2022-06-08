import 'package:blue_eye/utils/routes.dart';
import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4EFF6),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFFF4Eff6),
                        borderRadius: BorderRadius.circular(100.0),
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
                      onPressed: () => moveToHome(context),
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                        color: Colors.blue,
                      ),
                      tooltip: "Back",
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Notes Page",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                   Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFFF4Eff6),
                        borderRadius: BorderRadius.circular(100.0),
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
                      onPressed: () => moveToHome(context),
                      icon: const Icon(
                        Icons.info_outline,
                        size: 30,
                        color: Colors.blue,
                      ),
                      tooltip: "Back",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
