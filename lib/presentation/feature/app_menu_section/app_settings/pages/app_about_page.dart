import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class AppAboutPage extends StatelessWidget {
  static const id = '/appAboutPage';
  const AppAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('App About Page'),
      ),
    );
  }
}
