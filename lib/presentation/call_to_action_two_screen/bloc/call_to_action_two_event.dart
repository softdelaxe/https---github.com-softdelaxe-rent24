// ignore_for_file: must_be_immutable

part of 'call_to_action_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CallToActionTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CallToActionTwoEvent extends Equatable {}

/// Event that is dispatched when the CallToActionTwo widget is first created.
class CallToActionTwoInitialEvent extends CallToActionTwoEvent {
  @override
  List<Object?> get props => [];
}
