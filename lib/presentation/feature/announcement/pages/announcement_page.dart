import 'package:easy_localization/easy_localization.dart';
import 'package:expenso_expense_tracker/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get_it/get_it.dart' show GetIt;
import 'package:expenso_expense_tracker/presentation/feature/announcement/bloc/announcement_bloc.dart';
import 'package:expenso_expense_tracker/shared/extensions/string_extensions.dart';
import 'package:expenso_expense_tracker/presentation/widgets/custom_app_bar.dart';

import '../bloc/announcement_state.dart';


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
            itemCount: state.announcements.length,
            itemBuilder: (context, index) {
              final a = state.announcements[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  leading: Image.network(a.imageUrl, width: 60, height: 60, fit: BoxFit.cover),
                  title: Text(a.title),
                  subtitle: Text(a.subtitle),
                  trailing: Text(DateFormat('dd MMM').format(a.datetime)),
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
