import 'package:fitearnn/auth/signup.dart';
import 'package:fitearnn/otpScreen.dart';
import 'package:fitearnn/widgets/button.dart';
import 'package:fitearnn/widgets/divider.dart';
import 'package:fitearnn/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/google_button.dart';


class MobileNum extends StatefulWidget {
  const MobileNum({super.key});

  @override
  State<MobileNum> createState() => _MobileNumState();
}

class _MobileNumState extends State<MobileNum> {

  final TextEditingController _numController = TextEditingController();


  String dummyNumber = "0123456789"; // Dummy number
  bool isError = false; // Error flag
  String errorMessage = ""; // Error message

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171717),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 180,left: .01),
                  height: 50,
                  width: 50,
                  child: Image.asset("images/img_1.png", height: 50,width: 50,)),
              SizedBox(height: 10,),
              Text("Welcome to FitEarn", style: GoogleFonts.lato(fontSize: 30,fontWeight:FontWeight.bold, color: Colors.white),),
              SizedBox(height: 10,),
              Text("Please Sign in below.",style: GoogleFonts.lato(fontSize: 16,fontWeight: FontWeight.w600, color: Colors.white.withOpacity(.4))),
              SizedBox(height: 10,),
              Text("Enter Mobile Number",style: GoogleFonts.lato(fontSize: 18,fontWeight:FontWeight.w700, color: Colors.white)),
              SizedBox(height: 10,),
              CustomTextField(
                  hint: "Enter the phone number",
                  controller: _numController
              ),
              SizedBox(height: 10,),
              if (isError)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.warning_rounded, color: Colors.red),
                    const SizedBox(width: 10),
                    Text(
                      errorMessage,
                      style: const TextStyle(
                          fontSize: 13,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              SizedBox(width: 10,),
              CustomButton(text: "Continue with mobile",
                onTap: (){
                  String enteredNumber = _numController.text.trim();
                  if (enteredNumber != dummyNumber) {
                    setState(() {
                      isError = true;
                      errorMessage = "Wrong number! Please try again.";
                    });
                  } else {
                    setState(() {
                      isError = false;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OTPScreen()),
                    );
                  }
                },
                color: Colors.pinkAccent,
              ),
            ],
          ),
        ),

      ),

    );
  }
}
