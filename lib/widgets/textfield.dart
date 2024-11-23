import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final TextEditingController? controller; // Optional controller
  final TextInputType? keyboardType; // Optional keyboard type
  final String? Function(String?)? validator; // Optional validator
  final VoidCallback? onTap;

  const CustomTextField({
    Key? key,
    required this.hint,
    this.controller,
    this.keyboardType,
    this.validator,
    this.onTap,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final FocusNode _focusNode = FocusNode();
  late final TextEditingController _internalController;

  bool _hasFocus = false;
  bool _hasText = false;

  @override
  void initState() {
    super.initState();

    // Use the provided controller or create an internal one
    _internalController = widget.controller ?? TextEditingController();

    // Listen to focus changes
    _focusNode.addListener(() {
      setState(() {
        _hasFocus = _focusNode.hasFocus;
      });
    });

    // Listen to text changes
    _internalController.addListener(() {
      setState(() {
        _hasText = _internalController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      // Only dispose the internal controller if it's not provided externally
      _internalController.dispose();
    }
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 400,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: _hasFocus || _hasText ? Colors.black : Colors.black,
          border: Border.all(
            color: _hasFocus ? Colors.pink : Colors.black,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: TextFormField(
          focusNode: _focusNode,
          controller: _internalController,
          keyboardType: widget.keyboardType, // Use provided keyboard type
          validator: widget.validator, // Use provided validator
          style: GoogleFonts.lato(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          onTap: widget.onTap,
          decoration: InputDecoration(
            focusColor: Colors.pink,
            hintStyle: const TextStyle(color: Colors.white70),
            hintText: widget.hint,
            filled: true,
            fillColor: Colors.white.withOpacity(0.2),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
