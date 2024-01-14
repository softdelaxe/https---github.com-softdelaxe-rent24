// ignore_for_file: must_be_immutable

part of 'confirm_reset_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ConfirmReset widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ConfirmResetEvent extends Equatable {}

/// Event that is dispatched when the ConfirmReset widget is first created.
class ConfirmResetInitialEvent extends ConfirmResetEvent {
  @override
  List<Object?> get props => [];
}
