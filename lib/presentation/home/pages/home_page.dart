import 'dart:developer';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expenso_expense_tracker/config/themes/colors.dart';
import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/generated/app_icons.dart';
import 'package:expenso_expense_tracker/shared/helper_functions/custom_svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

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
            height: 400.h,
            width: 390.w,
            padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 20.h),
            decoration: BoxDecoration(
                color: AppColors.kHomeBlackColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r))),
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
                        );
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
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14.r)),
                      // child: CustomSvgIcon(AppIconsOld.kDoubleArrow),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                      width: 20.h,
                      // child: CustomSvgIcon(AppIconsOld.kDoubleArrow),
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
                  style: TextStyle(
                      fontSize: 22.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12.h,
                ),
                // BlocSelector<HomeBloc, HomeState, List<AddCardModel>>(
                //   bloc: homeBloc,
                //   selector: (state) => state.cardList,
                //   builder: (context, cardList) {
                //     log('cardList : ${cardList.length}');
                //
                //     if (cardList.isEmpty) {
                //       return AddCardButton(
                //         onTap: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(builder: (_) => AddCardPage()),
                //           );
                //         },
                //       );
                //     } else {
                //       final extendedList = [
                //         ...cardList,
                //         null
                //       ]; // `null` for AddCard slot
                //
                //       return SizedBox(
                //         height: 220.h,
                //         child: CarouselSlider.builder(
                //           itemCount: extendedList.length,
                //           carouselController: controller,
                //           itemBuilder: (context, index, realIdx) {
                //             final card = extendedList[index];
                //             return Padding(
                //               padding: EdgeInsets.symmetric(horizontal: 8.w),
                //               child: Transform.scale(
                //                 scale:
                //                     1, // Optional: Add scale effect if needed
                //                 child: card != null
                //                     ? CreditCardWidget(
                //                         cardHoldersName: card.cardHolderName,
                //                         cardNumber: card.cardNumber,
                //                         expiryDate: card.expiryDate,
                //                         cardType: card.cardType,
                //                       )
                //                     : AddCardButton(
                //                         onTap: () {
                //                           Navigator.push(
                //                             context,
                //                             MaterialPageRoute(
                //                                 builder: (_) => AddCardPage()),
                //                           );
                //                         },
                //                       ),
                //               ),
                //             );
                //           },
                //           options: CarouselOptions(
                //             height: 220.h,
                //             viewportFraction: 0.85,
                //             enlargeCenterPage: true,
                //             enableInfiniteScroll: false,
                //             scrollPhysics: const ClampingScrollPhysics(),
                //             pageSnapping: true,
                //             onPageChanged: (index, reason) {
                //               if (index == extendedList.length - 1) {
                //                 log('Reached Add Card Slot');
                //               }
                //             },
                //           ),
                //         ),
                //       );
                //     }
                //   },
                // )

                BlocSelector<HomeBloc, HomeState, List<AddCardModel>>(
                  bloc: homeBloc,
                  selector: (state) => state.cardList,
                  builder: (context, cardList) {
                    log('cardList : ${cardList.length}');

                    if (cardList.isEmpty) {
                      return AddCardButton(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => AddCardPage()),
                          );
                        },
                      );
                    } else {
                      final extendedList = [
                        ...cardList,
                        null
                      ]; // null = Add Card

                      return SizedBox(
                        height: 220.h,
                        child: PageView.builder(
                          controller: PageController(
                            viewportFraction:
                                0.85, // Same as carousel's card width
                          ),
                          physics: const ClampingScrollPhysics(), // No bounce
                          itemCount: extendedList.length,
                          itemBuilder: (context, index) {
                            final card = extendedList[index];
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Transform.scale(
                                scale: 1,
                                child: card != null
                                    ? CreditCardWidget(
                                        cardHoldersName: card.cardHolderName,
                                        cardNumber: card.cardNumber,
                                        expiryDate: card.expiryDate,
                                        cardType: card.cardType,
                                      )
                                    : AddCardButton(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) => AddCardPage()),
                                          );
                                        },
                                      ),
                              ),
                            );
                          },
                          onPageChanged: (index) {
                            if (index == extendedList.length - 1) {
                              log('Reached Add Card Slot');
                            }
                          },
                        ),
                      );
                    }
                  },
                )
              ],
            ),
          ),
          verticalMargin16,
          Container(
            height: 285.h,
            width: 360.w,
            decoration: BoxDecoration(
                color: AppColors.kHomeGraphBgColor,
                borderRadius: BorderRadius.circular(20.r)),
          ),
        ],
      ),
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
            borderRadius: BorderRadius.circular(32.r),
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
  const CreditCardWidget(
      {super.key,
      required this.cardHoldersName,
      required this.cardNumber,
      required this.expiryDate,
      required this.cardType});

  final String cardHoldersName;
  final String cardNumber;
  final String expiryDate;

  final CardType cardType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: (286 + 76).w,
      child: Row(
        children: [
          /// Left Section (Texts)
          Expanded(
            flex: 78,
            child: Container(
              padding: EdgeInsets.all(16.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.r),
                  bottomLeft: Radius.circular(22.r),
                ),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF9F9F9F),
                    Color(0xFF7A7A7A),
                    Color(0xFF5E5E5E),
                    Color(0xFF4B4B4B),
                    Color(0xFF333333),
                    Color(0xFF252525),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Available Credit",
                        style: GoogleFonts.publicSans(
                          color: Colors.white70,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                        width: 30.h,
                        child: CustomSvgIcon(AppIcons.kRfid),
                      )
                    ],
                  ),
                  Text(
                    "\$12000",
                    style: GoogleFonts.publicSans(
                      color: Colors.white,
                      fontSize: 32.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    "****  ****  ****  $cardNumber",
                    style: GoogleFonts.publicSans(
                      color: Colors.white,
                      fontSize: 14.sp,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Padding(
                    padding: rightPadding12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Card Holder",
                              style: GoogleFonts.publicSans(
                                  color: Colors.white54, fontSize: 10),
                            ),
                            Text(
                              cardHoldersName,
                              style: GoogleFonts.publicSans(
                                  color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Valid Thru",
                              style: GoogleFonts.publicSans(
                                  color: Colors.white54, fontSize: 10),
                            ),
                            Text(
                              expiryDate,
                              style: GoogleFonts.publicSans(
                                  color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// Right Section (Icons area)
          Expanded(
            flex: 22,
            child: Container(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                bottom: 8.w,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(22.r),
                  bottomRight: Radius.circular(22.r),
                ),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF7E7976),
                    Color(0xFF776962),
                    Color(0xFF70655F),
                    Color(0xFF5A524E),
                    Color(0xFF49423F),
                    Color(0xFF443C39),
                    Color(0xFF443C39),
                    Color(0xFF443C39)
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Tap Icon Placeholder
                  Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      height: 48.r,
                      width: 48.r,
                      // Replace this with your tap SVG later
                      // child: CustomSvgIcon(AppIcons.kMasterCard),
                      child: CustomSvgIcon(cardType.icon),
                    ),
                  ),
                  // Card Logo Placeholder
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
