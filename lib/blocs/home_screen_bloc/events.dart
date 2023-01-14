import 'package:equatable/equatable.dart';

class SwitchPageEvent extends Equatable {
  final int numOfPages;

  const SwitchPageEvent({required this.numOfPages});

  @override
  List<Object?> get props => [numOfPages];
}
