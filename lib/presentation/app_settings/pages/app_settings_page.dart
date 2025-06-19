import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class AppSettingsPage extends StatelessWidget {
  static const id = '/appSettingsPage';
  const AppSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('AppSettings Page'),
      ),
    );
  }
}
