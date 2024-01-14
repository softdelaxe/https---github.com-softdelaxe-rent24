import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/select_cab_two_screen/models/select_cab_two_model.dart';
part 'select_cab_two_event.dart';
part 'select_cab_two_state.dart';

/// A bloc that manages the state of a SelectCabTwo according to the event that is dispatched to it.
class SelectCabTwoBloc extends Bloc<SelectCabTwoEvent, SelectCabTwoState> {
  SelectCabTwoBloc(SelectCabTwoState initialState) : super(initialState) {
    on<SelectCabTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SelectCabTwoInitialEvent event,
    Emitter<SelectCabTwoState> emit,
  ) async {}
}
