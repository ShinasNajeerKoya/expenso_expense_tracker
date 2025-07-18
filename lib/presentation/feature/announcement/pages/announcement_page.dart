import 'package:expenso_expense_tracker/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:get_it/get_it.dart' show GetIt;
import 'package:expenso_expense_tracker/presentation/feature/announcement/bloc/announcement_bloc.dart';
import 'package:expenso_expense_tracker/shared/extensions/string_extensions.dart';
import 'package:expenso_expense_tracker/presentation/widgets/custom_app_bar.dart';


@RoutePage()
class AnnouncementPage extends StatelessWidget {
  static const id = '/announcementPage';
  AnnouncementPage({super.key});

  final announcementBloc = GetIt.I<AnnouncementBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: LocaleKeys.blank.toLocalizeString,
      ),
      body: Center(
        child: Text('Announcement Page'),
      ),
    );
  }
}
