import 'package:flutter/material.dart';

class CwbTextFormField extends StatelessWidget {
  final String? labelText;
  final String? Function(String?)? validator;
  final TextCapitalization textCapitalization;
  final bool obscureText;

  const CwbTextFormField({
    required this.labelText,
    this.validator,
    this.obscureText = false,
    this.textCapitalization = TextCapitalization.none,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
      textCapitalization: textCapitalization,
      validator: validator,
      obscureText: obscureText,
    );
  }
}
