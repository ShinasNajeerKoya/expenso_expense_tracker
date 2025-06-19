import 'package:expenso_expense_tracker/core/routes/route_config.dart';
import 'package:expenso_expense_tracker/presentation/feature/splash/bloc/splash_bloc.dart';
import 'package:expenso_expense_tracker/presentation/feature/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  static const id = '/splashPage';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late final SplashBloc splashBloc;

  @override
  void initState() {
    super.initState();
    splashBloc = GetIt.I<SplashBloc>();
    splashBloc.init();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      bloc: splashBloc,
      listenWhen: (previous, current) => previous.targetRoute != current.targetRoute,
      listener: (context, state) {
        if (state.targetRoute == OnboardingRoute.name) {
          context.replaceRoute(OnboardingRoute());
        } else if (state.targetRoute == HomeRoute.name) {
          context.replaceRoute(const HomeRoute());
        }
      },
      child: const Scaffold(
        body: Center(
          child: FlutterLogo(
            size: 200,
          ),
        ),
      ),
    );
  }
}
