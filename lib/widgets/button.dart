import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final Color color;

  const CustomButton({
    Key? key,
    required this.text,
    required this.color,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 400,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          backgroundColor: color,
        ),
        onPressed: onTap,
       child: Text(text,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: Colors.white),),
      ),
    );
  }
}
