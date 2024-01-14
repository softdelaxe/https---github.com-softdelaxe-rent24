import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/call_to_action_one_screen/models/call_to_action_one_model.dart';
part 'call_to_action_one_event.dart';
part 'call_to_action_one_state.dart';

/// A bloc that manages the state of a CallToActionOne according to the event that is dispatched to it.
class CallToActionOneBloc
    extends Bloc<CallToActionOneEvent, CallToActionOneState> {
  CallToActionOneBloc(CallToActionOneState initialState) : super(initialState) {
    on<CallToActionOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CallToActionOneInitialEvent event,
    Emitter<CallToActionOneState> emit,
  ) async {
    emit(state.copyWith(editTextController: TextEditingController()));
  }
}
