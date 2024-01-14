// ignore_for_file: must_be_immutable

part of 'call_to_action_two_bloc.dart';

/// Represents the state of CallToActionTwo in the application.
class CallToActionTwoState extends Equatable {
  CallToActionTwoState({this.callToActionTwoModelObj});

  CallToActionTwoModel? callToActionTwoModelObj;

  @override
  List<Object?> get props => [
        callToActionTwoModelObj,
      ];
  CallToActionTwoState copyWith(
      {CallToActionTwoModel? callToActionTwoModelObj}) {
    return CallToActionTwoState(
      callToActionTwoModelObj:
          callToActionTwoModelObj ?? this.callToActionTwoModelObj,
    );
  }
}
