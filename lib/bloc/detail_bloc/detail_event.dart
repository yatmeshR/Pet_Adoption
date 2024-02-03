part of 'detail_bloc.dart';

abstract class DetailEvent extends Equatable {
  const DetailEvent();
  @override
  List<Object?> get props => [];
}

class LoadPet extends DetailEvent{}

class AddPet extends DetailEvent{
final Animal animal;
  AddPet(this.animal);

  @override
  List<Object?> get props => [animal];
}