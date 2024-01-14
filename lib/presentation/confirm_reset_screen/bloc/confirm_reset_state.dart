// ignore_for_file: must_be_immutable

part of 'confirm_reset_bloc.dart';

/// Represents the state of ConfirmReset in the application.
class ConfirmResetState extends Equatable {
  ConfirmResetState({this.confirmResetModelObj});

  ConfirmResetModel? confirmResetModelObj;

  @override
  List<Object?> get props => [
        confirmResetModelObj,
      ];
  ConfirmResetState copyWith({ConfirmResetModel? confirmResetModelObj}) {
    return ConfirmResetState(
      confirmResetModelObj: confirmResetModelObj ?? this.confirmResetModelObj,
    );
  }
}
