import 'package:fitearnn/auth/google_auth/continue_with_mobile.dart';
import 'package:fitearnn/otpScreen.dart';
import 'package:fitearnn/splashscreen.dart';
import 'package:fitearnn/widgets/new.dart';
import 'package:flutter/material.dart';

import 'auth/google_auth/signIn/firstScreen.dart';
import 'auth/google_auth/signIn/secondScreen.dart';
import 'auth/google_auth/signIn/thirdScreen.dart';
import 'auth/login.dart';
import 'auth/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      home: SlashScreen()
    );
  }
}
