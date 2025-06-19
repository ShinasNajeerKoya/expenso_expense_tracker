import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expenso_expense_tracker/config/themes/colors.dart';
import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/core/routes/route_config.dart';
import 'package:expenso_expense_tracker/generated/app_icons.dart';
import 'package:expenso_expense_tracker/presentation/feature/add_card/utils/card_design_type_extension.dart';
import 'package:expenso_expense_tracker/shared/helper_functions/custom_svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

import '../../add_card/pages/add_card_page.dart';
import '../../add_card/utils/card_type_extensions.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';
import '../utils/extensions/menu_drawer_items_extension.dart';
import '../widgets/basic_details_section.dart';
import '../widgets/menu_drawer_widget.dart';
import '../widgets/saved_cards_section_widget.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
                      child: SizedBox(
                        height: 40.h,
                        width: 40.h,
                        // child: CustomSvgIcon(AppIconsOld.kDoubleArrow),
                        child: CustomSvgIcon(AppIcons.kFileAdd),
                      ),
                    ),
                    MenuDrawerWidget(),
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
