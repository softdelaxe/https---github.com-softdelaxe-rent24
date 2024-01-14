// ignore_for_file: must_be_immutable

part of 'face_reconginition_bloc.dart';

/// Represents the state of FaceReconginition in the application.
class FaceReconginitionState extends Equatable {
  FaceReconginitionState({this.faceReconginitionModelObj});

  FaceReconginitionModel? faceReconginitionModelObj;

  @override
  List<Object?> get props => [
        faceReconginitionModelObj,
      ];
  FaceReconginitionState copyWith(
      {FaceReconginitionModel? faceReconginitionModelObj}) {
    return FaceReconginitionState(
      faceReconginitionModelObj:
          faceReconginitionModelObj ?? this.faceReconginitionModelObj,
    );
  }
}
