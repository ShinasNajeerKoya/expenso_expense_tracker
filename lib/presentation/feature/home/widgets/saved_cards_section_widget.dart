import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/core/routes/route_config.dart';
import 'package:expenso_expense_tracker/domain/models/add_card/add_card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../add_card/pages/add_card_page.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';
import '../pages/home_page.dart';
import 'add_card_button.dart';
import 'credit_card_widget.dart';

class SavedCardsSectionWidget extends StatelessWidget {
  const SavedCardsSectionWidget({
    super.key,
    required this.homeBloc,
  });

  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    final currentLocale = context.locale;

    return BlocSelector<HomeBloc, HomeState, List<AddCardModel>>(
      bloc: homeBloc,
      selector: (state) => state.cardList,
      builder: (context, cardList) {
        if (cardList.isEmpty) {
          return AddCardButton(
            onTap: () async {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (_) => AddCardPage()),
              // ).then((_) {
              //   homeBloc.loadAllCards();
              // });
              final result = await context.pushRoute(AddCardRoute());

              if (result == true) {
                homeBloc.loadAllCards();
              }
            },
          );
        } else {
          final extendedList = [...cardList, null]; // null = Add Card slot

          return SizedBox(
            height: 220.h,
            child: CardSwiper(
              key: ValueKey(currentLocale.languageCode),
              cardsCount: extendedList.length,
              numberOfCardsDisplayed: 2,
              isLoop: true,
              allowedSwipeDirection: AllowedSwipeDirection.only(
                right: true,
                left: true,
              ),
              padding: bottomPadding12,
              backCardOffset: Offset(0, 24.h),
              cardBuilder: (context, index, horizontalOffset, verticalOffset) {
                final card = extendedList[index];

                return card != null
                    ? GestureDetector(
                        onTap: () async {
                          // final result = await Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (_) => AddCardPage(existingCard: card)),
                          // ).then((_) {
                          //   homeBloc.loadAllCards();
                          // });
                          final result = await context.pushRoute(AddCardRoute());

                          if (result == true) {
                            homeBloc.loadAllCards();
                          }
                        },
                        child: CreditCardWidget(
                          cardHoldersName: card.cardHolderName,
                          cardNumber: card.cardNumber,
                          expiryDate: card.expiryDate,
                          cardType: card.cardType,
                          cardDesignType: card.cardDesignType,
                        ),
                      )
                    : AddCardButton(
                        onTap: () async {
                          final result = await context.pushRoute(AddCardRoute());

                          if (result == true) {
                            homeBloc.loadAllCards();
                          }
                        },
                      );
              },
            ),
          );
        }
      },
    );
  }
}
