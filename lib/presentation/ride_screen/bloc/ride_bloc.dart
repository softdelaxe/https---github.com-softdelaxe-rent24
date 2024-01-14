import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/ride_screen/models/ride_model.dart';
part 'ride_event.dart';
part 'ride_state.dart';

/// A bloc that manages the state of a Ride according to the event that is dispatched to it.
class RideBloc extends Bloc<RideEvent, RideState> {
  RideBloc(RideState initialState) : super(initialState) {
    on<RideInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RideInitialEvent event,
    Emitter<RideState> emit,
  ) async {
    emit(state.copyWith(
      pickUpvalueController: TextEditingController(),
    ));
  }
}
