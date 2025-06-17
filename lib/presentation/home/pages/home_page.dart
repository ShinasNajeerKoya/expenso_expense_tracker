import 'dart:developer';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expenso_expense_tracker/config/themes/colors.dart';
import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/generated/app_icons.dart';
import 'package:expenso_expense_tracker/presentation/add_card/utils/card_design_type_extension.dart';
import 'package:expenso_expense_tracker/shared/helper_functions/custom_svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

import '../../../domain/models/add_card/add_card_model.dart';
import '../../add_card/pages/add_card_page.dart';
import '../../add_card/utils/card_type_extensions.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeBloc = GetIt.I<HomeBloc>();

  final CarouselSliderController controller = CarouselSliderController();

  @override
  void initState() {
    super.initState();
    homeBloc.loadAllCards();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 440.h,
            width: 390.w,
            padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 20.h),
            decoration: BoxDecoration(
                color: AppColors.kHomeBlackColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.r), bottomRight: Radius.circular(30.r))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => AddCardPage()),
                        ).then((_) {
                          homeBloc.loadAllCards();
                        });
                      },
                      child: SizedBox(
                        height: 40.h,
                        width: 40.h,
                        // child: CustomSvgIcon(AppIconsOld.kDoubleArrow),
                        child: CustomSvgIcon(AppIcons.kFileAdd),
                      ),
                    ),
                    Container(
                      height: 40.h,
                      width: 40.h,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14.r)),
                      // child: CustomSvgIcon(AppIconsOld.kDoubleArrow),
                    ),
                  ],
                ),
                verticalMargin20,
                BasicDetailsSection(),
                verticalMargin20,
                SavedCardsSectionWidget(homeBloc: homeBloc),
              ],
            ),
          ),
          verticalMargin16,
          Container(
            height: 285.h,
            width: 360.w,
            decoration: BoxDecoration(color: AppColors.kHomeGraphBgColor, borderRadius: BorderRadius.circular(20.r)),
          ),
        ],
      ),
    );
  }
}

class BasicDetailsSection extends StatelessWidget {
  const BasicDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
              width: 20.h,
              child: CustomSvgIcon(AppIcons.kSunrise),
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              'Good Morning',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          'Welcome Shinas',
          style: TextStyle(fontSize: 22.sp, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class SavedCardsSectionWidget extends StatelessWidget {
  const SavedCardsSectionWidget({
    super.key,
    required this.homeBloc,
  });

  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, List<AddCardModel>>(
      bloc: homeBloc,
      selector: (state) => state.cardList,
      builder: (context, cardList) {
        if (cardList.isEmpty) {
          return AddCardButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => AddCardPage()),
              ).then((_) {
                homeBloc.loadAllCards();
              });
            },
          );
        } else {
          final extendedList = [...cardList, null]; // null = Add Card slot

          return SizedBox(
            height: 220.h,
            child: CardSwiper(
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
                          final result = await Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => AddCardPage(existingCard: card)),
                          ).then((_) {
                            homeBloc.loadAllCards();
                          });
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
                          final result = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => AddCardPage(),
                            ),
                          );

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

class AddCardButton extends StatelessWidget {
  final VoidCallback onTap;

  const AddCardButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 200.h,
          width: (286 + 76).w,
          decoration: BoxDecoration(
            color: const Color(0xFFF9F7F2),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Center(
              child: GestureDetector(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: const Color(0xFFD67D4F),
                borderRadius: BorderRadius.circular(100.r),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x33D67D4F),
                    blurRadius: 24,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Icon Placeholder
                  CustomSvgIcon(AppIcons.kSlantedCard, // your icon path
                      color: Colors.white),
                  SizedBox(width: 8.w),
                  Text(
                    "Add Card",
                    style: GoogleFonts.publicSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ))),
    );
  }
}

class InnerShadowContainer extends StatelessWidget {
  final Widget child;
  final double borderRadius;

  const InnerShadowContainer({
    super.key,
    required this.child,
    this.borderRadius = 32,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Outer Container
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF9F7F2),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: child,
        ),

        /// Fake Inner Shadow Overlay
        Positioned.fill(
          child: IgnorePointer(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red.withOpacity(0.4),
                    blurRadius: 20,
                    spreadRadius: 1,
                    offset: const Offset(0, -8),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({
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
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "\$12000",
                  // titilliumWeb , exo2, saira
                  style: GoogleFonts.anta(
                    color: Colors.white,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "****  ****  ****  $cardNumber",
                  style: GoogleFonts.anta(
                    color: Colors.white,
                    fontSize: 14.sp,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Card Holder",
                          style: GoogleFonts.anta(color: Colors.white54, fontSize: 10.sp),
                        ),
                        Text(
                          cardHoldersName,
                          style: GoogleFonts.anta(color: Colors.white, fontSize: 12.sp),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Valid Thru",
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
