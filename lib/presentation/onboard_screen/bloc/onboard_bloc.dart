import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/onboard_screen/models/onboard_model.dart';
part 'onboard_event.dart';
part 'onboard_state.dart';

/// A bloc that manages the state of a Onboard according to the event that is dispatched to it.
class OnboardBloc extends Bloc<OnboardEvent, OnboardState> {
  //this is the constructor
  OnboardBloc(OnboardState initialState) : super(initialState) {
    //This sets up an event handler. When an event of type OnboardInitialEvent is dispatched,
    on<OnboardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardInitialEvent event,
    Emitter<OnboardState> emit,
  ) async {}
}
