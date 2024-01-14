import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/call_to_action_three_screen/models/call_to_action_three_model.dart';
part 'call_to_action_three_event.dart';
part 'call_to_action_three_state.dart';

/// A bloc that manages the state of a CallToActionThree according to the event that is dispatched to it.
class CallToActionThreeBloc
    extends Bloc<CallToActionThreeEvent, CallToActionThreeState> {
  CallToActionThreeBloc(CallToActionThreeState initialState)
      : super(initialState) {
    on<CallToActionThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CallToActionThreeInitialEvent event,
    Emitter<CallToActionThreeState> emit,
  ) async {}
}
