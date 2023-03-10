import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ventry/blocs/home_screen_bloc/events.dart';
import 'package:ventry/blocs/home_screen_bloc/states.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeEvent>((event, emit) {});
  }
}
