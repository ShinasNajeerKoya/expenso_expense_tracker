import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAddCardTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double height;
  final double? width;
  final Widget? trailing;
  final String? errorMessage;
  final TextInputType keyboardType;
  final bool isEditable;
  final String? prefixText;
  final void Function(String)? onChanged;
  final int? maxCharacterLength;

  const CustomAddCardTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.height,
    this.width,
    this.trailing,
    this.errorMessage,
    this.keyboardType = TextInputType.text,
    this.isEditable = true,
    this.prefixText,
    this.onChanged,
    this.maxCharacterLength,
  });

  @override
  Widget build(BuildContext context) {
    final readOnly = !isEditable;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height,
          width: width ?? double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Colors.grey.shade400),
          ),
          child: Row(
            children: [
              if (prefixText != null)
                Text(
                  prefixText!,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.sp,
                    letterSpacing: 3,
                  ),
                ),
              Expanded(
                child: TextField(
                  controller: controller,
                  readOnly: readOnly,
                  keyboardType: keyboardType,
                  onChanged: onChanged,
                  inputFormatters: maxCharacterLength != null
                      ? [LengthLimitingTextInputFormatter(maxCharacterLength)]
                      : null,
                  style: TextStyle(fontSize: 14.sp, letterSpacing: 3),
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: TextStyle(
                        fontSize: 14.sp, color: Colors.grey, letterSpacing: 3),
                    border: InputBorder.none,
                  ),
                ),
              ),
              if (trailing != null)
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: trailing!,
                ),
            ],
          ),
        ),
        if (errorMessage != null && errorMessage!.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 4, left: 4),
            child: Text(
              errorMessage!,
              style: TextStyle(color: Colors.red, fontSize: 10.sp),
            ),
          ),
      ],
    );
  }
}
