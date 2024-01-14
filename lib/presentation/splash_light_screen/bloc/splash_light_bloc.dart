import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/splash_light_screen/models/splash_light_model.dart';
part 'splash_light_event.dart';
part 'splash_light_state.dart';

/// A bloc that manages the state of a SplashLight according to the event that is dispatched to it.
class SplashLightBloc extends Bloc<SplashLightEvent, SplashLightState> {
  SplashLightBloc(SplashLightState initialState) : super(initialState) {
    on<SplashLightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashLightInitialEvent event,
    Emitter<SplashLightState> emit,
  ) async {}
}
