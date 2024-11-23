import 'package:fitearnn/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../otpScreen.dart';
import '../widgets/button.dart';
import '../widgets/divider.dart';
import '../widgets/google_button.dart';
import '../widgets/textfield.dart';
import 'google_auth/signIn/firstScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final TextEditingController _numController = TextEditingController();

  String dummyNumber = "0123456789"; // Dummy number
  bool isError = false; // Error flag
  String errorMessage = ""; // Error message

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171717),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 180, left: .01),
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    "images/img_1.png",
                    height: 50,
                    width: 50,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Welcome to FitEarn",
                  style: GoogleFonts.lato(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 10),
                Text(
                  "Please Sign Up below.",
                  style: GoogleFonts.lato(
                      fontSize: 16,fontWeight: FontWeight.w600, color: Colors.white.withOpacity(.4)),
                ),
                const SizedBox(height: 10),
                Text(
                  "Enter Mobile Number",
                  style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: _numController,
                  hint: "Enter the phone number",
                  keyboardType: TextInputType.phone,
                ),
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
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'By signing Up, I accept ',
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                        text: 'terms & conditions',
                        style: GoogleFonts.lato(
                            color: Colors.pinkAccent,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                        text: ' & ',
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: GoogleFonts.lato(
                            color: Colors.pinkAccent,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                CustomButton(
                  text: "Continue with mobile",
                  onTap: () {
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
                const SizedBox(height: 10),
                OrDivider(),
                const SizedBox(height: 10),
                CustomSignInButton(
                  text: 'Sign UP with Google',
                  imagePath: 'Images/google.png',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GoogleFirstScreen()));
                  },
                  textColor: Colors.grey,
                  borderColor: Colors.grey,
                  borderRadius: 10.0,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: GoogleFonts.lato(
                          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                      style: ButtonStyle(),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          decoration: TextDecoration.underline, // Add this line
                          decorationColor: Colors.white, // Optional: Ensures the underline is white
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
