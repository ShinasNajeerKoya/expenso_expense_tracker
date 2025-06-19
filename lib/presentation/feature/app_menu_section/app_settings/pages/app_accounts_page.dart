import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class AppAccountsPage extends StatelessWidget {
  static const id = '/appAccountsPage';
  const AppAccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('AppAccountsPage'),
      ),
    );
  }
}
