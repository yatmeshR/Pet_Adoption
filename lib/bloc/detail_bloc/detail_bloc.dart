
import 'package:adoption_app/data/adopt_pet/adopt_pet.dart';
import 'package:adoption_app/data/animal_data/animal_data.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final  BuildContext context;
  DetailBloc(this.context) :super(DetailState(animals:[])) {
    on<LoadPet>(
            (event, emit) => emit(state.exchangeWith(allAnimal)));
    
    on<AddPet>((event, emit) {
      Adopt.instanceOfAdopt.adoptPet(event.animal,context);
      emit(state.exchangeWith(state.animals));
    });
  }
}
