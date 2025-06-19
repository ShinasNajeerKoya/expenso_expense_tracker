import 'package:expenso_expense_tracker/shared/helper_functions/custom_svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/add_card_bloc.dart';
import '../bloc/add_card_state.dart';
import '../utils/card_type_extensions.dart';

class CardSelector extends StatelessWidget {
  const CardSelector({super.key, required this.addCardBloc});

  final AddCardBloc addCardBloc;

  @override
  Widget build(BuildContext context) {

    return BlocSelector<AddCardBloc, AddCardState, CardType>(
      bloc: addCardBloc,
      selector: (state) => state.selectedCardType,
      builder: (context, selectedCardType) {
        return Row(
          children: CardType.values.map((type) {
            final isSelected = selectedCardType == type;
            return Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: GestureDetector(
                  onTap: () => addCardBloc.onCardTypeChanged(type),
                  child: Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.grey[100] : Colors.white,
                      borderRadius: BorderRadius.circular(6.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, 2),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: CustomSvgIcon(
                      type.blackIcon,
                      width: 40.w,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
