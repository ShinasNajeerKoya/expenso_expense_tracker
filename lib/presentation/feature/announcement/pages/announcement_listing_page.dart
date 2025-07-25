import 'package:easy_localization/easy_localization.dart';
import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get_it/get_it.dart' show GetIt;
import 'package:expenso_expense_tracker/presentation/feature/announcement/bloc/announcement_bloc.dart';
import 'package:expenso_expense_tracker/shared/extensions/string_extensions.dart';
import 'package:expenso_expense_tracker/presentation/widgets/custom_app_bar.dart';

import '../bloc/announcement_state.dart';

@RoutePage()
class AnnouncementPage extends StatefulWidget {
  static const id = '/announcementPage';
  const AnnouncementPage({super.key});

  @override
  State<AnnouncementPage> createState() => _AnnouncementPageState();
}

class _AnnouncementPageState extends State<AnnouncementPage> {
  final announcementBloc = GetIt.I<AnnouncementBloc>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _apiCalls();
  }

  // void _apiCalls() {
  //   announcementBloc.fetchAnnouncements();
  // }
  void _apiCalls() {
    // final fromLocal = false;
    final fromLocal = true;

    if (fromLocal) {
      announcementBloc.fetchAnnouncementsFromLocal();
    } else {
      announcementBloc.fetchAnnouncements();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: CustomAppBar(
        title: "Announcements",
      ),
      body: BlocBuilder<AnnouncementBloc, AnnouncementState>(
        bloc: announcementBloc,
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.error) {
            return const Center(child: Text('Failed to load announcements'));
          }

          if (state.announcements.isEmpty) {
            return const Center(child: Text('No announcements yet'));
          }

          return ListView.builder(
            padding: EdgeInsets.only(top: 12.h),
            itemCount: state.announcements.length,
            itemBuilder: (context, index) {
              final a = state.announcements[index];

              return Container(
                height: 230.h,
                width: double.maxFinite,
                margin: EdgeInsets.only(
                  right: 16.w,
                  left: 16.w,
                  bottom: 20.h,
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(0, 4),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150.h,
                      width: double.maxFinite,
                      margin: EdgeInsets.only(right: 8.w, left: 8.w),
                      child: Image.network(
                        a.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    verticalMargin8,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            a.title,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          DateFormat('dd MMM').format(a.datetime),
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      a.subtitle,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.grey.shade600,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => announcementBloc.addNewAnnouncement(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
