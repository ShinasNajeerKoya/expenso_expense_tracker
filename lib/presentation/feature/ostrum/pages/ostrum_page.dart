import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:expenso_expense_tracker/generated/locale_keys.g.dart';


import 'package:get_it/get_it.dart' show GetIt;
import 'package:expenso_expense_tracker/presentation/feature/ostrum/bloc/ostrum_bloc.dart';
import 'package:expenso_expense_tracker/shared/extensions/string_extensions.dart';
import 'package:expenso_expense_tracker/presentation/widgets/custom_app_bar.dart';


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
      body: Center(
        child: Text('Ostrum Page'),
      ),
    );
  }
}
