import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/face_completed_screen/models/face_completed_model.dart';
part 'face_completed_event.dart';
part 'face_completed_state.dart';

/// A bloc that manages the state of a FaceCompleted according to the event that is dispatched to it.
class FaceCompletedBloc extends Bloc<FaceCompletedEvent, FaceCompletedState> {
  FaceCompletedBloc(FaceCompletedState initialState) : super(initialState) {
    on<FaceCompletedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FaceCompletedInitialEvent event,
    Emitter<FaceCompletedState> emit,
  ) async {}
}
