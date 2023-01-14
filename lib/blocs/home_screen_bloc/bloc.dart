import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ventry/blocs/home_screen_bloc/events.dart';

class IntroScreenBloc extends Bloc<SwitchPageEvent, int> {
  int currentPage = 1;

  IntroScreenBloc() : super(1) {
    on<SwitchPageEvent>((event, emit) {
      int currentSelectedPage = (currentPage++ == event.numOfPages) ? 1 : currentPage;
      emit((currentPage = currentSelectedPage));
    });
  }
}
