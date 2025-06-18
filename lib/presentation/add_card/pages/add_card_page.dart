import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/presentation/add_card/widgets/card_selector.dart';
import 'package:expenso_expense_tracker/presentation/add_card/widgets/text_field_label_and_body.dart';
import 'package:expenso_expense_tracker/shared/helper_functions/custom_svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/models/add_card/add_card_model.dart';
import '../../../generated/app_icons.dart';
import '../bloc/add_card_bloc.dart';
import '../bloc/add_card_state.dart';
import '../utils/card_design_type_extension.dart';
import '../utils/card_type_extensions.dart';
import '../widgets/custom_add_card_text_field.dart';

@RoutePage()
class AddCardPage extends StatefulWidget {
  final AddCardModel? existingCard;

  const AddCardPage({super.key, this.existingCard});

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  late final AddCardBloc addCardBloc;

  final cardNumberController = TextEditingController();
  final cardHolderController = TextEditingController();
  final expiryDateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    addCardBloc = GetIt.I<AddCardBloc>();

    final card = widget.existingCard;
    if (card != null) {
      cardNumberController.text = card.cardNumber;
      cardHolderController.text = card.cardHolderName;
      expiryDateController.text = card.expiryDate;

      addCardBloc.setEditingCard(card);
    } else {
      /// 🧹 Clear previous card info from bloc if it's a new card
      addCardBloc.clearEditingCard();
    }
  }

  @override
  void dispose() {
    cardNumberController.dispose();
    cardHolderController.dispose();
    expiryDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(addCardBloc.state.editingCardModel != null ? "Update Card" : "Add Card",
            style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        child: BlocListener<AddCardBloc, AddCardState>(
          bloc: addCardBloc,
          listenWhen: (previous, current) => current.isFormSaved && !previous.isFormSaved,
          listener: (context, state) {
            if (widget.existingCard == null) {
              // Only clear if it was a new card
              cardNumberController.clear();
              cardHolderController.clear();
              expiryDateController.clear();
              addCardBloc.onCardTypeChanged(CardType.masterCard);
              addCardBloc.onCardDesignChanged(CardDesignType.card1);
            }

            Navigator.pop(context, true);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// 🔹 Wrap only the card selector with BlocBuilder
              CardSelector(addCardBloc: addCardBloc),
              SizedBox(height: 26.h),
              Divider(height: 1, color: Colors.grey.shade400),
              SizedBox(height: 26.h),

              /// 🔹 Use separate BlocBuilders for error-sensitive fields
              CardNumberTextFieldWidget(addCardBloc: addCardBloc, cardNumberController: cardNumberController),

              // card designs
              CardDesignDropDownWidget(addCardBloc: addCardBloc),

              SizedBox(height: 26.h),

              // card holders name
              CardHoldersNameTextFieldWidget(addCardBloc: addCardBloc, cardHolderController: cardHolderController),

              // card valid till section
              CardValidTillTextFieldWidget(addCardBloc: addCardBloc, expiryDateController: expiryDateController),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: allPadding20,
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: EdgeInsets.symmetric(vertical: 14.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            onPressed: () {
              addCardBloc.validateAndSubmitCardDetails();
            },
            child: Text(
              addCardBloc.state.editingCardModel != null ? "Update Card" : "Save Card",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class CardValidTillTextFieldWidget extends StatelessWidget {
  const CardValidTillTextFieldWidget({
    super.key,
    required this.addCardBloc,
    required this.expiryDateController,
  });

  final AddCardBloc addCardBloc;
  final TextEditingController expiryDateController;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddCardBloc, AddCardState, String?>(
      bloc: addCardBloc,
      selector: (state) => state.expiryDateError,
      builder: (context, expiryDateError) {
        return TextFieldLabelAndBody(
          label: 'Expiry Date',
          child: CustomAddCardTextField(
            controller: expiryDateController,
            hintText: "MM/YY",
            height: 44.h,
            width: 180.w,
            keyboardType: TextInputType.number,
            errorMessage: expiryDateError,
            maxCharacterLength: 5,
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
          ),
        );
      },
    );
  }
}

class CardHoldersNameTextFieldWidget extends StatelessWidget {
  const CardHoldersNameTextFieldWidget({
    super.key,
    required this.addCardBloc,
    required this.cardHolderController,
  });

  final AddCardBloc addCardBloc;
  final TextEditingController cardHolderController;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddCardBloc, AddCardState, String?>(
      bloc: addCardBloc,
      selector: (state) => state.cardHolderError,
      builder: (context, cardHolderError) {
        return TextFieldLabelAndBody(
          label: 'Cardholder Name',
          child: CustomAddCardTextField(
            controller: cardHolderController,
            hintText: "Name on the card",
            height: 55.h,
            keyboardType: TextInputType.text,
            errorMessage: cardHolderError,
            isEditable: true,
            onChanged: addCardBloc.onCardHolderChanged,
          ),
        );
      },
    );
  }
}

class CardDesignDropDownWidget extends StatelessWidget {
  const CardDesignDropDownWidget({
    super.key,
    required this.addCardBloc,
  });

  final AddCardBloc addCardBloc;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddCardBloc, AddCardState, CardDesignType>(
      bloc: addCardBloc,
      selector: (state) => state.selectedDesignType,
      builder: (context, selectedDesignType) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Select Card Design", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: DropdownButton<CardDesignType>(
                value: selectedDesignType,
                isExpanded: true,
                focusColor: Colors.transparent,
                underline: const SizedBox(),

                // Remove splash/highlight/hover effects
                dropdownColor: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
                // Rounded dropdown menu
                style: TextStyle(color: Colors.black),
                // Optional: set text style

                items: CardDesignType.values.map((design) {
                  return DropdownMenuItem(
                    value: design,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(3.r),
                          child: Container(
                            width: 32.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                              color: Colors.transparent, // fallback color
                            ),
                            child: CustomSvgIcon(
                              design.svgAsset,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 12.w),
                        Text(design.label),
                      ],
                    ),
                  );
                }).toList(),

                onChanged: (newType) {
                  if (newType != null) {
                    addCardBloc.onCardDesignChanged(newType);
                  }
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class CardNumberTextFieldWidget extends StatelessWidget {
  const CardNumberTextFieldWidget({
    super.key,
    required this.addCardBloc,
    required this.cardNumberController,
  });

  final AddCardBloc addCardBloc;
  final TextEditingController cardNumberController;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AddCardBloc, AddCardState, String?>(
      bloc: addCardBloc,
      selector: (state) => state.cardNumberError,
      builder: (context, cardNumberError) {
        return TextFieldLabelAndBody(
          label: 'Card Number',
          child: CustomAddCardTextField(
            controller: cardNumberController,
            hintText: "0000",
            height: 55.h,
            prefixText: "****  ****  ****  ",
            trailing: InkWell(
              onTap: () {},
              child: SizedBox(
                height: 24.h,
                width: 24.w,
                child: CustomSvgIcon(AppIcons.kScanCard),
              ),
            ),
            keyboardType: TextInputType.number,
            errorMessage: cardNumberError,
            isEditable: true,
            maxCharacterLength: 4,
            onChanged: addCardBloc.onCardNumberChanged,
          ),
        );
      },
    );
  }
}
