import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleThirdScreen extends StatefulWidget {
  const GoogleThirdScreen({super.key});

  @override
  State<GoogleThirdScreen> createState() => _GoogleThirdScreenState();
}

class _GoogleThirdScreenState extends State<GoogleThirdScreen> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171717),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity, // Stretch container to screen width
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
                              Text("Sign up With Google",
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
                          child: Text(
                            "Fitearn.com wants        \naccess to your Google\n  Account",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
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
                                backgroundImage: const AssetImage("images/img.png"),
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
                        const SizedBox(height: 20),
                        Text(
                          "Select what fitearn.com can access",
                          style: GoogleFonts.lato(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 30),
                        _buildPermissionRow(
                          icon: Icons.person_outline_outlined,
                          text:
                          "Associate you with your personal info\non Google",
                        ),
                        const SizedBox(height: 25),
                        _buildPermissionRow(
                          icon: Icons.person_outline_outlined,
                          text:
                          "See your personal info, including any\npersonal info you've made\npublicly available",
                        ),
                        const SizedBox(height: 25),
                        _buildPermissionRow(
                          icon: Icons.person_outline_outlined,
                          text:
                          "See your personal info, including any\npersonal info you've made\npublicly available",
                        ),
                        const SizedBox(height: 25),

                         Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                "See and download your exact date of\n birth. Learn more.",
                                style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white),
                              ),
                            ),
                            Icon(Icons.square, color: Colors.white),
                          ],
                        ),
                        const SizedBox(height: 25),

                        Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                "See and download your exact date of\n birth. Learn more.",
                                style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white),
                              ),
                            ),
                            Icon(Icons.square, color: Colors.white),
                          ],
                        ),
                        const SizedBox(height: 25),

                        Container(
                          height: 70,
                          width: 288,
                          child: Text("You may be sharing sensitive info with this site or app. You can always see or remove access inyour Google Account.",
                            style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w700,color: Colors.white),),
                        ),
                        const SizedBox(height: 25),

                        Container(
                          height: 70,
                          width: 288,
                          child: Text("Learn how Google helps you share data safely,",
                            style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w700,color: Colors.white),),
                        ),
                        const SizedBox(height: 20),

                        Container(
                          height: 70,
                          width: 288,
                          child: Text("See Fitnearn.com's privacy policy and Terms of Service",
                            style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w700,color: Colors.white),),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 40,
                              width: 128,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  backgroundColor: const Color(0xFF262626),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "Cancel",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              width: 128,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  backgroundColor: const Color(0xFF262626),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "Continue",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPermissionRow({required IconData icon, required String text}) {
    return Row(
      children: [
        CircleAvatar(
          radius: 15,
          child: Icon(icon, color: Colors.black),
          backgroundColor: Colors.white,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.lato(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        Icon(Icons.check_box, color: Colors.white12.withOpacity(0.9)),
      ],
    );
  }
}
