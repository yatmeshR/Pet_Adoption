part of 'detail_bloc.dart';

 class DetailState extends Equatable {
  final List<Animal> animals;
  const DetailState( {required this.animals});

  DetailState exchangeWith(List<Animal>? animals) {
    return DetailState(
      animals : animals ?? this.animals,
    );
  }

  @override
  List<Object?> get props => [animals];
}



