import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/select_cab_one_screen/models/select_cab_one_model.dart';
part 'select_cab_one_event.dart';
part 'select_cab_one_state.dart';

/// A bloc that manages the state of a SelectCabOne according to the event that is dispatched to it.
class SelectCabOneBloc extends Bloc<SelectCabOneEvent, SelectCabOneState> {
  SelectCabOneBloc(SelectCabOneState initialState) : super(initialState) {
    on<SelectCabOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SelectCabOneInitialEvent event,
    Emitter<SelectCabOneState> emit,
  ) async {}
}
