// ignore_for_file: must_be_immutable

part of 'call_to_action_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CallToAction widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CallToActionEvent extends Equatable {}

/// Event that is dispatched when the CallToAction widget is first created.
class CallToActionInitialEvent extends CallToActionEvent {
  @override
  List<Object?> get props => [];
}
