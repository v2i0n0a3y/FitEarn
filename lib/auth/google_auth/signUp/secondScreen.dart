import 'package:fitearnn/auth/google_auth/signIn/thirdScreen.dart';
import 'package:fitearnn/auth/google_auth/signUp/thirdScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleSignUpSecondScreen extends StatefulWidget {
  const GoogleSignUpSecondScreen({super.key});

  @override
  State<GoogleSignUpSecondScreen> createState() => _GoogleSignUpSecondScreenState();
}

class _GoogleSignUpSecondScreenState extends State<GoogleSignUpSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171717),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Spacer(), // Push content to the center of the screen
              Container(
                width: double.infinity, // Make the container stretch to the screen width
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset("images/google.png", height: 24, width: 24),
                          const SizedBox(width: 10),
                          Text(
                            "Sign up With Google",
                            style: GoogleFonts.lato(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(color: Colors.white),
                    const SizedBox(height: 20),
                    Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Sign up to',
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: ' FitEarn.com',
                              style: GoogleFonts.lato(
                                color: Colors.pinkAccent,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.grey[800],
                              backgroundImage: AssetImage("images/img.png")
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Vicky_Nolan20@gmail.com",
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),

                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                            'To continue, Google will share your name, email address, language preference, and profile picture with FitEarn.com. Before using this app, you can review FitEarn.com’s ',
                            style: GoogleFonts.lato(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: 'privacy policy',
                            style: GoogleFonts.lato(
                              color: Colors.blueAccent,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: ' and ',
                            style: GoogleFonts.lato(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: 'Terms of Service',
                            style: GoogleFonts.lato(
                              color: Colors.blueAccent,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: '.',
                            style: GoogleFonts.lato(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        children: [

                          TextSpan(
                            text: ' You can manage Sign inwith Google inyour  ',
                            style: GoogleFonts.lato(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: 'Google Account',
                            style: GoogleFonts.lato(
                              color: Colors.blueAccent,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 128,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                backgroundColor: Color(0xFF262626)
                            ),
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: Text("Cancel",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: Colors.white),),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 128,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              backgroundColor: Color(0xFF262626),
                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>GoogleSignUpThirdScreen()));
                            },
                            child: Text("Continue",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,)


                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "English (United Kingdom)",
                        style: GoogleFonts.lato(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Text(
                    "Help   Privacy   Terms",
                    style: GoogleFonts.lato(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
