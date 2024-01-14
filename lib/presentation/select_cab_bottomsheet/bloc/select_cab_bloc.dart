import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/select_cab_bottomsheet/models/select_cab_model.dart';
part 'select_cab_event.dart';
part 'select_cab_state.dart';

/// A bloc that manages the state of a SelectCab according to the event that is dispatched to it.
class SelectCabBloc extends Bloc<SelectCabEvent, SelectCabState> {
  SelectCabBloc(SelectCabState initialState) : super(initialState) {
    on<SelectCabInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SelectCabInitialEvent event,
    Emitter<SelectCabState> emit,
  ) async {}
}
