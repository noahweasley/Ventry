import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ventry/blocs/intro_screen_bloc/intro_screen_bloc.dart';

class IntroScreenBloc extends Bloc<SwitchPageEvent, int> {
  int currentPage = 0;

  IntroScreenBloc() : super(0) {
    on<SwitchPageEvent>((event, emit) {
      if (event is ButtonSwitchPageEvent) {
        int currentSelectedPage = (++currentPage > event.numOfPages) ? 0 : currentPage;
        emit(currentPage = currentSelectedPage);
        print('Emitted: $currentPage');
      } else if (event is SwipeSwitchPageEvent) {
        currentPage = event.currentIndex;
        emit(currentPage);
      }
    });
  }
}
