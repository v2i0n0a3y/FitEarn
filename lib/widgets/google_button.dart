import 'package:flutter/material.dart';

class CustomSignInButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onPressed;
  final Color textColor;
  final Color borderColor;
  final double borderRadius;

  const CustomSignInButton({
    Key? key,
    required this.text,
    required this.imagePath,
    required this.onPressed,
    this.textColor = Colors.grey,
    this.borderColor = Colors.grey,
    this.borderRadius = 10.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 400,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          splashFactory: InkRipple.splashFactory,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          side: BorderSide(color: borderColor),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(image: AssetImage(imagePath), height: 35.0),
              const SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(fontSize: 18, color: textColor,fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
