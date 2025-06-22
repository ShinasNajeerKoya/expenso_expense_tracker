import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/core/routes/route_config.dart';
import 'package:expenso_expense_tracker/domain/models/add_card/add_card_model.dart';
import 'package:expenso_expense_tracker/generated/locale_keys.g.dart';
import 'package:expenso_expense_tracker/presentation/feature/home/bloc/home_bloc.dart';
import 'package:expenso_expense_tracker/presentation/feature/home/bloc/home_state.dart';
import 'package:expenso_expense_tracker/presentation/feature/home/widgets/add_card_button.dart';
import 'package:expenso_expense_tracker/presentation/feature/home/widgets/credit_card_widget.dart';
import 'package:expenso_expense_tracker/presentation/widgets/custom_app_bar.dart';
import 'package:expenso_expense_tracker/shared/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class AppAccountsPage extends StatelessWidget {
  static const id = '/appAccountsPage';
  AppAccountsPage({super.key});

  final homeBloc = GetIt.I<HomeBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: LocaleKeys.onlyDigitsAllowed.toLocalizeString,
      ),
      body: BlocSelector<HomeBloc, HomeState, List<AddCardModel>>(
        bloc: homeBloc,
        selector: (state) => state.cardList,
        builder: (context, cardList) {
          if (cardList.isEmpty) {
            return Center(
              child: Text('no cards saved'),
            );
          } else {
            // null = Add Card slot
            return ListView.builder(
                itemCount: cardList.length,
                itemBuilder: (context, index) {
                  final card = cardList[index];

                  return Padding(
                    padding: EdgeInsets.only(bottom: 12.h, left: 16.w, right: 16.w),
                    child: CreditCardWidget(
                      cardHeight: 210.h,
                      cardHoldersName: card.cardHolderName,
                      cardNumber: card.cardNumber,
                      expiryDate: card.expiryDate,
                      cardType: card.cardType,
                      cardDesignType: card.cardDesignType,
                      boxFit: BoxFit.fitWidth,
                    ),
                  );
                });
          }
        },
      ),
    );
  }
}
