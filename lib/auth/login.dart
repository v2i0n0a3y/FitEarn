import 'package:fitearnn/auth/signup.dart';
import 'package:fitearnn/otpScreen.dart';
import 'package:fitearnn/widgets/button.dart';
import 'package:fitearnn/widgets/divider.dart';
import 'package:fitearnn/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/google_button.dart';
import 'google_auth/signIn/firstScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

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
              SizedBox(width: 20,),
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
              SizedBox(height: 10,),
              OrDivider(),
              SizedBox(height: 10,),
              CustomSignInButton(
                text: 'Sign in with with Google',
                imagePath: 'Images/google.png',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>GoogleFirstScreen()));
                },
                textColor: Colors.grey,
                borderColor: Colors.grey,
                borderRadius: 10.0,
              ),

              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?", style: GoogleFonts.lato(fontSize: 16,fontWeight: FontWeight.w400, color: Colors.white),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));

                    }, child: Text("Sign UP",
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white),))
                ],
              )
            ],
          ),
        ),

      ),

    );
  }
}
