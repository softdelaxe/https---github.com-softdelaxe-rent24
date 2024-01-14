// ignore_for_file: must_be_immutable

part of 'call_to_action_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CallToActionThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CallToActionThreeEvent extends Equatable {}

/// Event that is dispatched when the CallToActionThree widget is first created.
class CallToActionThreeInitialEvent extends CallToActionThreeEvent {
  @override
  List<Object?> get props => [];
}
