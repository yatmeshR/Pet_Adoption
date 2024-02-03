part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class HomePageDots extends HomeEvent{
  final int index;

  HomePageDots(this.index);

  @override
  List<Object?> get props => [index];
}
