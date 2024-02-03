part of 'history_bloc.dart';

 class HistoryState extends Equatable {
  final List<Animal> adoptedAnimals ;
  const HistoryState({required this.adoptedAnimals});

  HistoryState exchangeWith(List<Animal> adoptedAnimals) {
    return HistoryState(
     adoptedAnimals: adoptedAnimals ,
    );
  }

  @override
  List<Object?> get props => [adoptedAnimals];
}



