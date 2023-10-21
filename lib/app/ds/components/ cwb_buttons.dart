import 'package:flutter/material.dart';

class CwbPrimaryButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  const CwbPrimaryButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(label),
      ),
    );
  }
}
