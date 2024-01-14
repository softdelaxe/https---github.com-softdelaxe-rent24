// ignore_for_file: must_be_immutable

part of 'call_to_action_bloc.dart';

/// Represents the state of CallToAction in the application.
class CallToActionState extends Equatable {
  CallToActionState({this.callToActionModelObj});

  CallToActionModel? callToActionModelObj;

  @override
  List<Object?> get props => [
        callToActionModelObj,
      ];
  CallToActionState copyWith({CallToActionModel? callToActionModelObj}) {
    return CallToActionState(
      callToActionModelObj: callToActionModelObj ?? this.callToActionModelObj,
    );
  }
}
