part of 'home_bloc.dart';

class HomeState extends Equatable {
  final int index;

  const HomeState({this.index = 0});

  HomeState exchangeWith({required int index}) {
    return HomeState(
      index: index ?? this.index,
    );
  }

  @override
  List<Object?> get props => [index];
}