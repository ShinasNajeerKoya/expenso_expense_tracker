import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/repositories/home/home_repository.dart';

import 'home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  HomeBloc(this._repo) : super(const HomeState());

  final HomeRepository _repo;

  /// add you business logic here

}