// ignore_for_file: must_be_immutable

part of 'confirm_reset_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ConfirmResetOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ConfirmResetOneEvent extends Equatable {}

/// Event that is dispatched when the ConfirmResetOne widget is first created.
class ConfirmResetOneInitialEvent extends ConfirmResetOneEvent {
  @override
  List<Object?> get props => [];
}
