import 'package:equatable/equatable.dart';

class SwitchPageEvent extends Equatable {
  final int numOfPages;
  const SwitchPageEvent({required this.numOfPages});

  @override
  List<Object?> get props => [numOfPages];
}

class ButtonSwitchPageEvent extends SwitchPageEvent {
  const ButtonSwitchPageEvent({required super.numOfPages});
}

class SwipeSwitchPageEvent extends SwitchPageEvent {
  final int currentIndex;
  const SwipeSwitchPageEvent({required super.numOfPages, this.currentIndex = 0});
}
