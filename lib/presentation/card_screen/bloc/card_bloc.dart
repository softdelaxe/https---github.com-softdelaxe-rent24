import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/card_screen/models/card_model.dart';
part 'card_event.dart';
part 'card_state.dart';

/// A bloc that manages the state of a Card according to the event that is dispatched to it.
class CardBloc extends Bloc<CardEvent, CardState> {
  CardBloc(CardState initialState) : super(initialState) {
    on<CardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CardInitialEvent event,
    Emitter<CardState> emit,
  ) async {}
}
