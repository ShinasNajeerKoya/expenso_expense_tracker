import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class AppCurrencySelectionPage extends StatelessWidget {
  static const id = '/appCurrencySelectionPage';
  const AppCurrencySelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('AppCurrencySelectionPage'),
      ),
    );
  }
}
