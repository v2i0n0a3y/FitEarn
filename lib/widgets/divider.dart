import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 140,
          child: Divider(
            color: Colors.white, // Divider color
            thickness: 1,       // Divider thickness
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "OR",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,   // Text color
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          width: 140,
          child: Divider(
            color: Colors.white, // Divider color
            thickness: 1,       // Divider thickness
          ),
        ),
      ],
    );
  }
}
