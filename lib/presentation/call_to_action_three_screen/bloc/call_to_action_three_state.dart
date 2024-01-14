// ignore_for_file: must_be_immutable

part of 'call_to_action_three_bloc.dart';

/// Represents the state of CallToActionThree in the application.
class CallToActionThreeState extends Equatable {
  CallToActionThreeState({this.callToActionThreeModelObj});

  CallToActionThreeModel? callToActionThreeModelObj;

  @override
  List<Object?> get props => [
        callToActionThreeModelObj,
      ];
  CallToActionThreeState copyWith(
      {CallToActionThreeModel? callToActionThreeModelObj}) {
    return CallToActionThreeState(
      callToActionThreeModelObj:
          callToActionThreeModelObj ?? this.callToActionThreeModelObj,
    );
  }
}
