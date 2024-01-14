import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/face_reconginition_screen/models/face_reconginition_model.dart';
part 'face_reconginition_event.dart';
part 'face_reconginition_state.dart';

/// A bloc that manages the state of a FaceReconginition according to the event that is dispatched to it.
class FaceReconginitionBloc
    extends Bloc<FaceReconginitionEvent, FaceReconginitionState> {
  FaceReconginitionBloc(FaceReconginitionState initialState)
      : super(initialState) {
    on<FaceReconginitionInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FaceReconginitionInitialEvent event,
    Emitter<FaceReconginitionState> emit,
  ) async {}
}
