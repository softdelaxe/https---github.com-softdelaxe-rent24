import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/face_scan_screen/models/face_scan_model.dart';
part 'face_scan_event.dart';
part 'face_scan_state.dart';

/// A bloc that manages the state of a FaceScan according to the event that is dispatched to it.
class FaceScanBloc extends Bloc<FaceScanEvent, FaceScanState> {
  FaceScanBloc(FaceScanState initialState) : super(initialState) {
    on<FaceScanInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FaceScanInitialEvent event,
    Emitter<FaceScanState> emit,
  ) async {}
}
