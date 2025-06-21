import 'package:expenso_expense_tracker/config/font_manager/font_styles.dart';
import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/domain/models/app_menu_section/currency/currency_model.dart';
import 'package:expenso_expense_tracker/generated/locale_keys.g.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/bloc/app_settings_bloc.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/bloc/app_settings_state.dart';
import 'package:expenso_expense_tracker/shared/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expenso_expense_tracker/generated/app_icons.dart';
import 'package:expenso_expense_tracker/shared/helper_functions/custom_svg_icon.dart';
import '../../add_card/utils/card_design_type_extension.dart';
import '../../add_card/utils/card_type_extensions.dart';

class CreditCardWidget extends StatelessWidget {
  CreditCardWidget({
    super.key,
    required this.cardHoldersName,
    required this.cardNumber,
    required this.expiryDate,
    required this.cardType,
    required this.cardDesignType,
  });

  final String cardHoldersName;
  final String cardNumber;
  final String expiryDate;

  final CardType cardType;
  final CardDesignType cardDesignType;

  final appSettingsBloc = GetIt.I<AppSettingsBloc>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: (286 + 76).w,
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: CustomSvgIcon(
                cardDesignType.svgAsset,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 12.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 24.h,
                      width: 20.w,
                      child: CustomSvgIcon(
                        AppIcons.kRfidWhite,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                      width: 60.w,
                      child: CustomSvgIcon(cardType.whiteIcon),
                    ),
                  ],
                ),
                verticalMargin20,
                BlocSelector<AppSettingsBloc, AppSettingsState, CurrencyModel?>(
                  bloc: appSettingsBloc,
                  selector: (state) => state.selectedCurrency,
                  builder: (context, selectedCurrency) {
                    return Text(
                      selectedCurrency != null ? '${selectedCurrency.symbol} 12000' : '₹ 12000',
                      // titilliumWeb , exo2, saira
                      style: FontStyles.creditCard(
                        color: Colors.white,
                        size: 28.sp,
                        letterSpacing: 2,
                        // fontWeight: FontWeight.normal,
                      ),
                    );
                  },
                ),
                verticalMargin12,
                Text(
                  "****  ****  ****  $cardNumber",
                  style: FontStyles.creditCard(
                    color: Colors.white,
                    size: 16.sp,
                    letterSpacing: 3,
                  ),
                ),
                verticalMargin12,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          LocaleKeys.cardholderName.toLocalizeString,
                          style: GoogleFonts.anta(color: Colors.white54, fontSize: 10.sp),
                        ),
                        SizedBox(
                          width: 100.w,
                          child: Text(
                            cardHoldersName,
                            style: GoogleFonts.anta(color: Colors.white, fontSize: 12.sp),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          LocaleKeys.cardholderName.toLocalizeString,
                          style: GoogleFonts.anta(color: Colors.white54, fontSize: 10.sp),
                        ),
                        Text(
                          expiryDate,
                          style: GoogleFonts.anta(color: Colors.white, fontSize: 12.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                      width: 50.w,
                      child: CustomSvgIcon(
                        AppIcons.kChipWhite,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
