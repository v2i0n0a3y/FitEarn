import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'auth/login.dart';
import 'auth/signup.dart';

class SlashScreen extends StatefulWidget {
  const SlashScreen({super.key});

  @override
  State<SlashScreen> createState() => _SlashScreenState();
}

class _SlashScreenState extends State<SlashScreen> {

  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds:2);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => SecondScreen()
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    );
  }
}


class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds:2);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => ThirdScreen()
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 100),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              height: 48,
              width: 48,
            ),
          ),
        ],
      ),
    );
  }
}


class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {

  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds:2);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => ForthScreen()
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 100),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              height: 48,
              width: 48,
            ),
          ),
        ],
      ),
    );
  }
}

class ForthScreen extends StatefulWidget {
  const ForthScreen({super.key});

  @override
  State<ForthScreen> createState() => _ForthScreenState();
}

class _ForthScreenState extends State<ForthScreen> {

  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds:2);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => FifthScreen()
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              height: 48,
              width: 48,
            ),
          ),
        ],
      ),
    );
  }
}

class FifthScreen extends StatefulWidget {
  const FifthScreen({super.key});

  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {


  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds:2);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => SixthScreen()
    )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Image.asset("images/img.png", height: 150,width: 150,),
        )
    );
  }
}


class SixthScreen extends StatefulWidget {
  const SixthScreen({super.key});

  @override
  State<SixthScreen> createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {


  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds:2);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => SeventhScreen()
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Image.asset("images/img_1.png", height: 150,width: 150,),
        )
    );
  }
}


class SeventhScreen extends StatefulWidget {
  const SeventhScreen({super.key});

  @override
  State<SeventhScreen> createState() => _SeventhScreenState();
}

class _SeventhScreenState extends State<SeventhScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15,left: 8,right: 8,bottom: 8),
            child: Text("Start Your Fitness\n Trainning journey",
              style: GoogleFonts.lato(fontSize: 32,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),),
          ),
          SizedBox(height: 30,),
          Image.asset("images/img_2.png",height: 300,width: 311,),
          SizedBox(height: 70,),

          Container(
            margin: EdgeInsets.only(left: 15,right: 15),
            height: 50,
            width: 400,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF262626)), // Button color

                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    // Change your radius here
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                child: Text("Already have an Account",
                  style: GoogleFonts.lato(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w600),))
          ),
          SizedBox(height: 10,),
          Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              height: 50,
              width: 400,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent), // Button color
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        // Change your radius here
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                  },
                  child: Text("Get Started",
                    style: GoogleFonts.lato(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w600),))
          ),
        ],
      ),
    );
  }
}
