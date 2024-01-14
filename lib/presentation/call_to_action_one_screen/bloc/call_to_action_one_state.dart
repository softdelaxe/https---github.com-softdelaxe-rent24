// ignore_for_file: must_be_immutable

part of 'call_to_action_one_bloc.dart';

/// Represents the state of CallToActionOne in the application.
class CallToActionOneState extends Equatable {
  CallToActionOneState({
    this.editTextController,
    this.callToActionOneModelObj,
  });

  TextEditingController? editTextController;

  CallToActionOneModel? callToActionOneModelObj;

  @override
  List<Object?> get props => [
        editTextController,
        callToActionOneModelObj,
      ];
  CallToActionOneState copyWith({
    TextEditingController? editTextController,
    CallToActionOneModel? callToActionOneModelObj,
  }) {
    return CallToActionOneState(
      editTextController: editTextController ?? this.editTextController,
      callToActionOneModelObj:
          callToActionOneModelObj ?? this.callToActionOneModelObj,
    );
  }
}
