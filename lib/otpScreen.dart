import 'package:fitearnn/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String dummyOtp = "1234"; // Dummy OTP
  String enteredOtp = ""; // Entered OTP
  bool isError = false; // Error flag

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
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
                child: Image.asset("images/img_1.png", height: 50, width: 50),
              ),
              const SizedBox(height: 10),
              Text(
                "Welcome to FitEarn",
                style: GoogleFonts.lato(
                    fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                "Enter the 4 digit code shared on your phone.",
                style: GoogleFonts.lato(
                    fontSize: 16,fontWeight: FontWeight.w600, color: Colors.white.withOpacity(.4)),
              ),
              const SizedBox(height: 10),
              Text(
                "Enter OTP",
                style: GoogleFonts.lato(
                    fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: OTPTextField(
                      otpFieldStyle: OtpFieldStyle(
                        focusBorderColor: Colors.pinkAccent.withOpacity(.7),
                        backgroundColor: Colors.white.withOpacity(.2),
                      ),
                      length: 4,
                      width: 400,
                      fieldWidth: 50,
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      fieldStyle: FieldStyle.box,
                      onChanged: (pin) {
                        setState(() {
                          enteredOtp = pin;
                          isError = false; // Reset error state when user changes input
                        });
                      },
                      onCompleted: (pin) {
                        setState(() {
                          enteredOtp = pin;
                          isError = pin != dummyOtp; // Validate OTP
                        });
                      },
                    ),
                  ),
                ],
              ),
              isError ?
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.warning_rounded, color: Colors.red,),
                   SizedBox(width: 10,),
                   Text(
                    "Wrong OTP Please..Try again!",
                    style: TextStyle(fontSize: 13, color: Colors.redAccent, fontWeight: FontWeight.w500),
                  )
                ],
              ):
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               const Text(
                      "Resend OTP",
                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600, color: Colors.white70,
                          decoration: TextDecoration.underline, decorationColor: Colors.white),
                    ),
                  const Text(
                    "wait for 20 sec",
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600, color: Colors.white70),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              CustomButton(
                text: "Submit OTP",
                onTap: () {
                  if (!isError && enteredOtp == dummyOtp) {
                    // Proceed to the next screen
                    print("OTP Verified: Proceeding...");
                  } else {
                    setState(() {
                      isError = true;
                    });
                  }
                },
                color: Colors.pinkAccent,
              ),
              const SizedBox(height: 10),
              CustomButton(
                text: "Back",
                onTap: () {
                  Navigator.pop(context);
                },
                color: Colors.white.withOpacity(.2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
