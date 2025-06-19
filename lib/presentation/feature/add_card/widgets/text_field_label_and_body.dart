import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldLabelAndBody extends StatelessWidget {
  final String label;
  final Widget child;

  const TextFieldLabelAndBody({super.key, required this.label, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8.h),
        child,
        SizedBox(height: 26.h),
      ],
    );
  }
}
