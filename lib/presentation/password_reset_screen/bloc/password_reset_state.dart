// ignore_for_file: must_be_immutable

part of 'password_reset_bloc.dart';

/// Represents the state of PasswordReset in the application.
class PasswordResetState extends Equatable {
  PasswordResetState({this.passwordResetModelObj});

  PasswordResetModel? passwordResetModelObj;

  @override
  List<Object?> get props => [
        passwordResetModelObj,
      ];
  PasswordResetState copyWith({PasswordResetModel? passwordResetModelObj}) {
    return PasswordResetState(
      passwordResetModelObj:
          passwordResetModelObj ?? this.passwordResetModelObj,
    );
  }
}
