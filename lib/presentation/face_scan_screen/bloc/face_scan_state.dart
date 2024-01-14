// ignore_for_file: must_be_immutable

part of 'face_scan_bloc.dart';

/// Represents the state of FaceScan in the application.
class FaceScanState extends Equatable {
  FaceScanState({this.faceScanModelObj});

  FaceScanModel? faceScanModelObj;

  @override
  List<Object?> get props => [
        faceScanModelObj,
      ];
  FaceScanState copyWith({FaceScanModel? faceScanModelObj}) {
    return FaceScanState(
      faceScanModelObj: faceScanModelObj ?? this.faceScanModelObj,
    );
  }
}
