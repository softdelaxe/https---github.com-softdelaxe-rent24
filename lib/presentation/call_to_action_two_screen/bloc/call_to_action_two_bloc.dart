import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/call_to_action_two_screen/models/call_to_action_two_model.dart';
part 'call_to_action_two_event.dart';
part 'call_to_action_two_state.dart';

/// A bloc that manages the state of a CallToActionTwo according to the event that is dispatched to it.
class CallToActionTwoBloc
    extends Bloc<CallToActionTwoEvent, CallToActionTwoState> {
  CallToActionTwoBloc(CallToActionTwoState initialState) : super(initialState) {
    on<CallToActionTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CallToActionTwoInitialEvent event,
    Emitter<CallToActionTwoState> emit,
  ) async {}
}
