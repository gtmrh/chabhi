// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';

import 'package:chabhi/screens/login/ui/login.dart';
import 'package:chabhi/widget/app_logo.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  Timer startTime() {
    var duration = Duration(seconds: 5);
    return Timer(duration, route);
  }

  void route() {
    Navigator.pushReplacement(
        // context, MaterialPageRoute(builder: (context) => IntroOne()));
        context,
        MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: initScreen(context),
    );
  }

  initScreen(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppLogo(),
          // Image(
          //   image: AssetImage("assets/images/logo.png"),
          //   height: 100.0,
          //   width: 200.0,
          //   alignment: AlignmentDirectional.center,
          // ),
          SizedBox(height: 20),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          CircularProgressIndicator(
            backgroundColor: Colors.black,
            strokeWidth: 1,
          )
        ],
      ),
    ));
  }
}
