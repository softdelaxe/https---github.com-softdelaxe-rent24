// ignore_for_file: must_be_immutable

part of 'face_completed_bloc.dart';

/// Represents the state of FaceCompleted in the application.
class FaceCompletedState extends Equatable {
  FaceCompletedState({this.faceCompletedModelObj});

  FaceCompletedModel? faceCompletedModelObj;

  @override
  List<Object?> get props => [
        faceCompletedModelObj,
      ];
  FaceCompletedState copyWith({FaceCompletedModel? faceCompletedModelObj}) {
    return FaceCompletedState(
      faceCompletedModelObj:
          faceCompletedModelObj ?? this.faceCompletedModelObj,
    );
  }
}
