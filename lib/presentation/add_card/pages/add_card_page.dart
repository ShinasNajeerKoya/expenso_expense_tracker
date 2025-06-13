import 'package:expenso_expense_tracker/shared/helper_functions/custom_svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import '../bloc/add_card_bloc.dart';
import '../bloc/add_card_state.dart';
import '../utils/card_type_extensions.dart';

class AddCardPage extends StatelessWidget {
  AddCardPage({super.key});

  final addCardBloc = GetIt.I<AddCardBloc>();

  final cardNumberController = TextEditingController();
  final cardHolderController = TextEditingController();
  final expiryDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Add Card', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: BlocBuilder<AddCardBloc, AddCardState>(
        bloc: addCardBloc,
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _CardSelector(),
                SizedBox(height: 26.h),
                Divider(height: 1, color: Colors.grey.shade400),
                const SizedBox(height: 26),
                _LabeledField(
                    label: 'Card Number',
                    child: CustomAddCardTextField(
                      controller: cardNumberController,
                      hintText: "0000",
                      height: 55.h,
                      prefixText: "****  ****  ****  ",
                      trailing: Container(height: 20, width: 20, color: Colors.yellow),
                      keyboardType: TextInputType.number,
                      errorMessage: state.cardNumberError,
                      isEditable: true,
                      onChanged: addCardBloc.onCardNumberChanged,
                    )),
                _LabeledField(
                    label: 'Cardholder Name',
                    child: CustomAddCardTextField(
                      controller: cardHolderController,
                      hintText: "Name on the card",
                      height: 55.h,
                      keyboardType: TextInputType.text,
                      errorMessage: state.cardHolderError,
                      isEditable: true,
                      onChanged: addCardBloc.onCardHolderChanged,
                    )),
                _LabeledField(
                    label: 'Expiry Date',
                    child: CustomAddCardTextField(
                      controller: expiryDateController,
                      hintText: "MM/YY",
                      height: 44.h,
                      width: 180.w,
                      keyboardType: TextInputType.number,
                      errorMessage: state.expiryDateError,
                      onChanged: (value) {
                        final numbers = value.replaceAll('/', '');
                        if (numbers.length > 2) {
                          final formatted = '${numbers.substring(0, 2)}/${numbers.substring(2)}';
                          expiryDateController.value = TextEditingValue(
                            text: formatted,
                            selection: TextSelection.collapsed(offset: formatted.length),
                          );
                          addCardBloc.onExpiryDateChanged(formatted);
                        } else {
                          addCardBloc.onExpiryDateChanged(numbers);
                        }
                      },
                    )),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      addCardBloc
                        ..onCardNumberChanged(cardNumberController.text)
                        ..onCardHolderChanged(cardHolderController.text)
                        ..onExpiryDateChanged(expiryDateController.text)
                        ..validateAndSubmit();
                    },
                    child: const Text("Save Card", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _CardSelector extends StatefulWidget {
  const _CardSelector();

  @override
  State<_CardSelector> createState() => _CardSelectorState();
}

class _CardSelectorState extends State<_CardSelector> {
  CardType selectedType = CardType.masterCard;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: CardType.values.map((type) {
        final isSelected = selectedType == type;
        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: GestureDetector(
              onTap: () => setState(() => selectedType = type),
              child: Container(
                height: 50.h,
                decoration: BoxDecoration(
                  color: isSelected ? Colors.grey[300] : const Color(0xFFFFF9F9),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(-2, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: CustomSvgIcon(
                  type.icon,
                  width: 40.w,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class _LabeledField extends StatelessWidget {
  final String label;
  final Widget child;
  const _LabeledField({required this.label, required this.child});

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
                  style: TextStyle(fontSize: 14.sp, letterSpacing: 3),
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: TextStyle(fontSize: 14.sp, color: Colors.grey, letterSpacing: 3),
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
