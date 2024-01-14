import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/call_to_action_screen/models/call_to_action_model.dart';
part 'call_to_action_event.dart';
part 'call_to_action_state.dart';

/// A bloc that manages the state of a CallToAction according to the event that is dispatched to it.
class CallToActionBloc extends Bloc<CallToActionEvent, CallToActionState> {
  CallToActionBloc(CallToActionState initialState) : super(initialState) {
    on<CallToActionInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CallToActionInitialEvent event,
    Emitter<CallToActionState> emit,
  ) async {}
}
