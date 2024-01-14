// ignore_for_file: must_be_immutable

part of 'confirm_reset_one_bloc.dart';

/// Represents the state of ConfirmResetOne in the application.
class ConfirmResetOneState extends Equatable {
  ConfirmResetOneState({
    this.enterCodeController,
    this.confirmResetOneModelObj,
  });

  TextEditingController? enterCodeController;

  ConfirmResetOneModel? confirmResetOneModelObj;

  @override
  List<Object?> get props => [
        enterCodeController,
        confirmResetOneModelObj,
      ];
  ConfirmResetOneState copyWith({
    TextEditingController? enterCodeController,
    ConfirmResetOneModel? confirmResetOneModelObj,
  }) {
    return ConfirmResetOneState(
      enterCodeController: enterCodeController ?? this.enterCodeController,
      confirmResetOneModelObj:
          confirmResetOneModelObj ?? this.confirmResetOneModelObj,
    );
  }
}
