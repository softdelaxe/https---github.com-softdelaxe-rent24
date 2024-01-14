import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/password_reset_screen/models/password_reset_model.dart';
part 'password_reset_event.dart';
part 'password_reset_state.dart';

/// A bloc that manages the state of a PasswordReset according to the event that is dispatched to it.
class PasswordResetBloc extends Bloc<PasswordResetEvent, PasswordResetState> {
  PasswordResetBloc(PasswordResetState initialState) : super(initialState) {
    on<PasswordResetInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PasswordResetInitialEvent event,
    Emitter<PasswordResetState> emit,
  ) async {}
}
