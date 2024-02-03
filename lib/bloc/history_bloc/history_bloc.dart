import 'dart:async';

import 'package:adoption_app/data/adopt_pet/adopt_pet.dart';
import 'package:adoption_app/data/animal_data/animal_data.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(const HistoryState(adoptedAnimals: [])) {
    var adoptedAnimals = Adopt.instanceOfAdopt.adoptedAnimals;
    on<LoadHistory>((event, emit) {
      emit(state.exchangeWith(adoptedAnimals));
    });
  }
}
