import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class {{name.pascalCase()}}Page extends StatelessWidget {
  static const id = '/{{name.camelCase()}}Page';
  const {{name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('{{name.pascalCase()}} Page'),
      ),
    );
  }
}
