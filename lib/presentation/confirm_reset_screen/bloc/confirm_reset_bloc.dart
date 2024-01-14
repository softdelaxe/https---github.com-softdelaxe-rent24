import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/confirm_reset_screen/models/confirm_reset_model.dart';
part 'confirm_reset_event.dart';
part 'confirm_reset_state.dart';

/// A bloc that manages the state of a ConfirmReset according to the event that is dispatched to it.
class ConfirmResetBloc extends Bloc<ConfirmResetEvent, ConfirmResetState> {
  ConfirmResetBloc(ConfirmResetState initialState) : super(initialState) {
    on<ConfirmResetInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ConfirmResetInitialEvent event,
    Emitter<ConfirmResetState> emit,
  ) async {}
}
