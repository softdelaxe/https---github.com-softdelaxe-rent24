// ignore_for_file: must_be_immutable

part of 'password_reset_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PasswordReset widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PasswordResetEvent extends Equatable {}

/// Event that is dispatched when the PasswordReset widget is first created.
class PasswordResetInitialEvent extends PasswordResetEvent {
  @override
  List<Object?> get props => [];
}
