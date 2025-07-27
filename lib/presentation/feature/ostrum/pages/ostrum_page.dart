import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:expenso_expense_tracker/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get_it/get_it.dart' show GetIt;
import 'package:expenso_expense_tracker/presentation/feature/ostrum/bloc/ostrum_bloc.dart';
import 'package:expenso_expense_tracker/shared/extensions/string_extensions.dart';
import 'package:expenso_expense_tracker/presentation/widgets/custom_app_bar.dart';

import '../../../../domain/models/comment/comment_model.dart';
import '../bloc/ostrum_state.dart';
import 'package:tuple/tuple.dart';

@RoutePage()
class OstrumPage extends StatelessWidget {
  static const id = '/ostrumPage';
  OstrumPage({super.key});

  final ostrumBloc = GetIt.I<OstrumBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: LocaleKeys.blank.toLocalizeString,
      ),
      body: BlocSelector<OstrumBloc, OstrumState, Tuple3<bool, bool, List<CommentModel>>>(
        bloc: ostrumBloc,
        selector: (state) => Tuple3(state.isLoading, state.error, state.comments),
        builder: (context, tuple) {
          final isLoading = tuple.item1;
          final hasError = tuple.item2;
          final comments = tuple.item3;

          if (isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (hasError) {
            return const Center(
              child: Text(
                'Something went wrong while loading comments.',
                style: TextStyle(color: Colors.red),
              ),
            );
          }

          if (comments.isEmpty) {
            return const Center(child: Text("No comments loaded"));
          }

          return ListView.builder(
            itemCount: comments.length,
            itemBuilder: (context, index) {
              final comment = comments[index];
              return ListTile(
                title: Text(comment.name ?? 'No name'),
                subtitle: Text(comment.email ?? 'No email'),
                trailing: const Icon(Icons.comment),
              );
            },
          );
        },
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              ostrumBloc.fetchOstrum();
            },
            child: const Icon(Icons.refresh),
          ),
          FloatingActionButton(
              heroTag: null,
              onPressed: () {
                ostrumBloc.clearCache();
              },
              child: const Icon(
                Icons.delete_outline,
              )),
        ],
      ),
    );
  }
}
