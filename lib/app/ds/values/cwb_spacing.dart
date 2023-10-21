import 'package:flutter/material.dart';

class CwbSpacing extends StatelessWidget {
  const CwbSpacing({
    super.key,
    this.spacing = 8,
  });
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: spacing, width: spacing);
  }
}
