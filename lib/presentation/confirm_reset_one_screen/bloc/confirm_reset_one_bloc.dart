import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/confirm_reset_one_screen/models/confirm_reset_one_model.dart';
part 'confirm_reset_one_event.dart';
part 'confirm_reset_one_state.dart';

/// A bloc that manages the state of a ConfirmResetOne according to the event that is dispatched to it.
class ConfirmResetOneBloc
    extends Bloc<ConfirmResetOneEvent, ConfirmResetOneState> {
  ConfirmResetOneBloc(ConfirmResetOneState initialState) : super(initialState) {
    on<ConfirmResetOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ConfirmResetOneInitialEvent event,
    Emitter<ConfirmResetOneState> emit,
  ) async {
    emit(state.copyWith(enterCodeController: TextEditingController()));
  }
}
