import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.labelText,
    required this.controller,
    this.counterText,
    this.textCapitalization,
    this.maxLength,
    this.keyboardType,
    this.floatingLabelStyleColor,
    this.focusedBorderColor,
    this.enteredTextColor,
    this.prefixIcon,
    this.suffixIcon,
  });

  String labelText;
  TextEditingController controller;
  String? counterText;
  TextCapitalization? textCapitalization;
  int? maxLength;
  TextInputType? keyboardType;
  Color? floatingLabelStyleColor;
  Color? focusedBorderColor;
  Color? enteredTextColor;
  Icon? prefixIcon;
  Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(color: enteredTextColor),
      maxLength: maxLength,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      decoration: InputDecoration(
        labelText: labelText,
        counterText: counterText,
        counterStyle: const TextStyle(color: Colors.grey),
        labelStyle: TextStyle(color: Colors.grey.shade600),
        floatingLabelStyle: TextStyle(color: floatingLabelStyleColor),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22.0),
          borderSide: BorderSide(
            color: focusedBorderColor ?? Colors.white,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: const BorderSide(
            color: Color(0xffC9C9C9),
          ),
        ),
      ),
    );
  }
}
