import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class AppGeneralSettingsPage extends StatelessWidget {
  static const id = '/appGeneralSettingsPage';
  const AppGeneralSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('AppSettings Page'),
      ),
    );
  }
}
