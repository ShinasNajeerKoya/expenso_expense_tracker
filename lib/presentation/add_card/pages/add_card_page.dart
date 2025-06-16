import 'dart:developer';

import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/presentation/add_card/widgets/card_selector.dart';
import 'package:expenso_expense_tracker/presentation/add_card/widgets/text_field_label_and_body.dart';
import 'package:expenso_expense_tracker/shared/helper_functions/custom_svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import '../../../generated/app_icons.dart';
import '../bloc/add_card_bloc.dart';
import '../bloc/add_card_state.dart';
import '../utils/card_type_extensions.dart';
import '../widgets/custom_add_card_text_field.dart';

// class AddCardPage extends StatelessWidget {
//   AddCardPage({super.key});
//
//   final addCardBloc = GetIt.I<AddCardBloc>();
//
//   final cardNumberController = TextEditingController();
//   final cardHolderController = TextEditingController();
//   final expiryDateController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text('Add Card', style: TextStyle(color: Colors.black)),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.black),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _CardSelector(addCardBloc: addCardBloc),
//               SizedBox(height: 26.h),
//               Divider(height: 1, color: Colors.grey.shade400),
//               const SizedBox(height: 26),
//               BlocBuilder<AddCardBloc, AddCardState>(
//                 bloc: addCardBloc,
//                 builder: (context, state) {
//                   return _LabeledField(
//                       label: 'Card Number',
//                       child: CustomAddCardTextField(
//                         controller: cardNumberController,
//                         hintText: "0000",
//                         height: 55.h,
//                         prefixText: "****  ****  ****  ",
//                         trailing: InkWell(
//                           onTap: () {},
//                           child: SizedBox(
//                             height: 24,
//                             width: 24,
//                             child: CustomSvgIcon(AppIcons.kScanCard),
//                           ),
//                         ),
//                         keyboardType: TextInputType.number,
//                         errorMessage: state.cardNumberError,
//                         isEditable: true,
//                         maxCharacterLength: 4,
//                         onChanged: addCardBloc.onCardNumberChanged,
//                       ));
//                 },
//               ),
//               BlocBuilder<AddCardBloc, AddCardState>(
//                 bloc: addCardBloc,
//                 builder: (context, state) {
//                   return _LabeledField(
//                       label: 'Cardholder Name',
//                       child: CustomAddCardTextField(
//                         controller: cardHolderController,
//                         hintText: "Name on the card",
//                         height: 55.h,
//                         keyboardType: TextInputType.text,
//                         errorMessage: state.cardHolderError,
//                         isEditable: true,
//                         onChanged: addCardBloc.onCardHolderChanged,
//                       ));
//                 },
//               ),
//               BlocBuilder<AddCardBloc, AddCardState>(
//                 bloc: addCardBloc,
//                 builder: (context, state) {
//                   return _LabeledField(
//                       label: 'Expiry Date',
//                       child: CustomAddCardTextField(
//                         controller: expiryDateController,
//                         hintText: "MM/YY",
//                         height: 44.h,
//                         width: 180.w,
//                         keyboardType: TextInputType.number,
//                         errorMessage: state.expiryDateError,
//                         maxCharacterLength: 5,
//                         onChanged: (value) {
//                           final numbers = value.replaceAll('/', '');
//                           if (numbers.length > 2) {
//                             final formatted =
//                                 '${numbers.substring(0, 2)}/${numbers.substring(2)}';
//                             expiryDateController.value = TextEditingValue(
//                               text: formatted,
//                               selection: TextSelection.collapsed(
//                                   offset: formatted.length),
//                             );
//                             addCardBloc.onExpiryDateChanged(formatted);
//                           } else {
//                             addCardBloc.onExpiryDateChanged(numbers);
//                           }
//                         },
//                       ));
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: Padding(
//         padding: allPadding20,
//         child: BlocBuilder<AddCardBloc, AddCardState>(
//           bloc: addCardBloc,
//           builder: (context, state) {
//             return SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   padding: const EdgeInsets.symmetric(vertical: 14),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                 onPressed: () {
//                   final cardType = state.selectedCardType;
//                   final cardNumber = cardNumberController.text;
//                   final cardHolderName = cardHolderController.text;
//                   final expiryDate = expiryDateController.text;
//
//                   addCardBloc.validateAndSubmitCardDetails(
//                       cardType: cardType,
//                       cardNumber: cardNumber,
//                       cardHolderName: cardHolderName,
//                       expiryDate: expiryDate);
//                 },
//                 child: const Text("Save Card",
//                     style: TextStyle(color: Colors.white)),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

class AddCardPage extends StatefulWidget {
  const AddCardPage({super.key});

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
    print('AddCardPage rebuilt');

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Add Card', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// 🔹 Wrap only the card selector with BlocBuilder
            CardSelector(addCardBloc: addCardBloc),
            SizedBox(height: 26.h),
            Divider(height: 1, color: Colors.grey.shade400),
            const SizedBox(height: 26),

            /// 🔹 Use separate BlocBuilders for error-sensitive fields
            BlocSelector<AddCardBloc, AddCardState, String?>(
              bloc: addCardBloc,
              selector: (state) => state.cardNumberError,
              builder: (context, cardNumberError) {
                print('Card Number textfield rebuilt');

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
                        height: 24,
                        width: 24,
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
            ),
            BlocSelector<AddCardBloc, AddCardState, String?>(
              bloc: addCardBloc,
              selector: (state) => state.cardHolderError,
              builder: (context, cardHolderError) {
                print('Cardholder Name textfield rebuilt');

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
            ),
            BlocSelector<AddCardBloc, AddCardState, String?>(
              bloc: addCardBloc,
              selector: (state) => state.expiryDateError,
              builder: (context, expiryDateError) {
                print('Expiry Date textfield rebuilt');

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
                        final formatted =
                            '${numbers.substring(0, 2)}/${numbers.substring(2)}';
                        expiryDateController.value = TextEditingValue(
                          text: formatted,
                          selection:
                              TextSelection.collapsed(offset: formatted.length),
                        );
                        addCardBloc.onExpiryDateChanged(formatted);
                      } else {
                        addCardBloc.onExpiryDateChanged(numbers);
                      }
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: allPadding20,
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              addCardBloc.validateAndSubmitCardDetails();
            },
            child:
                const Text("Save Card", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
